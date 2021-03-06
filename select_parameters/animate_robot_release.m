%% animate_robot.m
%
% Description:
%   Animates the robot according to a list of configurations over time.
%   
% Inputs:
%   q_list: 2xN list of configurations q, where q = [theta1;theta2;theta3];
%   params: a struct with many elements, generated by calling init_params.m
%   varargin: optional name-value pair arguments:
%       'trace_joint1': (default: false), if true, plots a tracer on the
%           motor1 
%       'trace_joint2': (default: false), if true, plots a tracer on the
%           motor2 
%       'trace_tip': (default: false), if true, plots a tracer on the
%           pendulum's tip
%       'video': (default: false), if true, animation is written to file.
%
% Outputs:
%   none


function animate_robot_release(q_list,params,varargin)
% Step 1: instantiate an inputParser:
p = inputParser;

% Step 2: create the parsing schema:
%   2a: required inputs:
addRequired(p,'triple_pendulum_config', ...
    @(q_list) isnumeric(q_list) && size(q_list,1)==5);
addRequired(p,'triple_pendulum_params', ...
    @(params) ~isempty(params));
%   2b: optional inputs:
%       optional name-value pairs to trace different parts of the robot:
addParameter(p, 'trace_motor1', false);
addParameter(p, 'trace_motor2', false);
addParameter(p, 'trace_top', false);
addParameter(p, 'video', false);

parse(p, q_list, params, varargin{:});

fig_handle = figure('Renderer', 'painters', 'Position', [10 10 900 600]);

if (p.Results.trace_motor1 || p.Results.trace_motor2 ...
        || p.Results.trace_top)
    tracing = true;
else
    tracing = false;
end

if p.Results.video
        v = VideoWriter('releasing.avi');
        open(v);
end

if tracing
        top.x = [];
        top.y = [];     
    
        top.curr.tip.x = [];
        top.curr.tip.y = [];
        
        mid.curr.tip.x = [];
        mid.curr.tip.y = [];

   
end


for i = 1:size(q_list,2)
    plot_robot_release(q_list(:,i),params,'new_fig',false);
    if tracing
            FK = fwd_kin_release(q_list(:,i),params);
            
            top.x = [top.x, q_list(1,i)];
            top.y = [top.y, q_list(2,i)];

            top.curr.tip.x = [top.curr.tip.x, FK(1,2)];
            top.curr.tip.y = [top.curr.tip.y, FK(2,2)];

            mid.curr.tip.x = [mid.curr.tip.x, FK(1,4)];
            mid.curr.tip.y = [mid.curr.tip.y, FK(2,4)];
            
            if p.Results.trace_motor1
                hold on;
                plot(top.curr.tip.x,top.curr.tip.y,'o-',...
                    'Color',params.viz.colors.tracers.top,...
                    'MarkerSize',1,'LineWidth',0.5,...
                    'MarkerFaceColor',params.viz.colors.tracers.top,...
                    'MarkerEdgeColor',params.viz.colors.tracers.top);
                hold off;
            end
            
            if p.Results.trace_motor2
                hold on;
                plot(mid.curr.tip.x,mid.curr.tip.y,'o-',...
                    'Color',params.viz.colors.tracers.mid,...
                    'MarkerSize',1,'LineWidth',0.5,...
                    'MarkerFaceColor',params.viz.colors.tracers.mid,...
                    'MarkerEdgeColor',params.viz.colors.tracers.mid);
                hold off;
            end
            
            if p.Results.trace_top
                hold on;
                plot(top.x,top.y,'o-',...
                    'Color',params.viz.colors.tracers.bot,...
                    'MarkerSize',2,'LineWidth',1,...
                    'MarkerFaceColor',params.viz.colors.tracers.bot,...
                    'MarkerEdgeColor',params.viz.colors.tracers.bot);
                hold off;
            end
    end
    if p.Results.video
            M(i) = getframe(fig_handle);
            writeVideo(v,M(i));
        end
end
    if p.Results.video
        close(v);
%         movie(gcf,M); % comment this out if you don't want to see replay
    end
    
            
    
 






end