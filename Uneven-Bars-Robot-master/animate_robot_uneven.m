%% animate_robot_uneven.m
%
% Description:
%   Animates the robot according to a list of configurations over time.
%   
% Inputs:
%   x: 10xN list of configurations q and dq
%   F_list: 5xN list of constraint forces F
%   params: a struct with many elements, generated by calling init_params.m
%
% Outputs:
%   none

function animate_robot_uneven(q_list,F_list,params,varargin)

% Parse input arguments
% Note: a simple robot animation function doesn't need this, but I want to
% write extensible code, so I'm using "varargin" which requires input
% parsing. See the reference below:
%
% https://people.umass.edu/whopper/posts/better-matlab-functions-with-the-inputparser-class/

% Step 1: instantiate an inputParser:
p = inputParser;

% Step 2: create the parsing schema:
%   2a: required inputs:
addRequired(p,'robot_config', ...
    @(q) isnumeric(q_list) && size(q_list,1)==10);
addRequired(p,'constraint_forces', ...
    @(q) isnumeric(F_list) && size(F_list,1)==2);
addRequired(p,'robot_params', ...
    @(params) ~isempty(params));
%   2b: optional inputs:
%       optional name-value pairs to trace different parts of the robot:
addParameter(p, 'trace_top_com', false);
addParameter(p, 'trace_top_tip', false);
addParameter(p, 'trace_mid_com', false);
addParameter(p, 'trace_mid_tip', false);
addParameter(p, 'trace_bot_com', false);
addParameter(p, 'trace_bot_tip', false);
addParameter(p, 'show_constraint_forces', false);
addParameter(p, 'video', false);

% Step 3: parse the inputs:
parse(p, q_list, F_list, params, varargin{:});

fig_handle = figure('Renderer', 'painters', 'Position', [10 10 900 600]);

% if tracing is true for anything, then trace
if (p.Results.trace_top_com || p.Results.trace_top_tip ...
        || p.Results.trace_mid_com || p.Results.trace_mid_tip ...
        || p.Results.trace_bot_com || p.Results.trace_bot_tip)
    tracing = true;
else
    tracing = false;
end
    
if tracing
    top.curr.com.x = [];
    top.curr.com.y = [];

    top.curr.tip.x = [];
    top.curr.tip.y = [];
        
    mid.curr.com.x = [];
    mid.curr.com.y = [];
        
    mid.curr.tip.x = [];
    mid.curr.tip.y = [];
        
    bot.curr.com.x = [];
    bot.curr.com.y = [];
        
    bot.curr.tip.x = [];
    bot.curr.tip.y = [];
end

% if video is desired...
if p.Results.video
    v = VideoWriter('triple_pendulum.avi');
    v.FrameRate = 1/params.viz.dt;
    open(v);
end

for i = 1:size(q_list/2,2)
    plot_robot_uneven(q_list(:,i),params,'new_fig',false);
    
    % for convenience, define some terms
    q = q_list(:,i);
    x = q(1);
    y = q(2);
    theta_1 = q(3);
    theta_2 = q(4);
    theta_3 = q(5);
    F = F_list(:,i);

    if tracing
        
        [FK] = fwd_kin_uneven(q,params);
        
        % append (x,y) location of top link CoM:
        top.curr.com.x = [top.curr.com.x, FK(1,1)];
        top.curr.com.y = [top.curr.com.y, FK(2,1)];
        
        % append (x,y) location of top link tip:
        top.curr.tip.x = [top.curr.tip.x, FK(1,2)];
        top.curr.tip.y = [top.curr.tip.y, FK(2,2)];
        
        % append (x,y) location of mid link CoM:
        mid.curr.com.x = [mid.curr.com.x, FK(1,3)];
        mid.curr.com.y = [mid.curr.com.y, FK(2,3)];
        
        % append (x,y) location of mid link tip:
        mid.curr.tip.x = [mid.curr.tip.x, FK(1,4)];
        mid.curr.tip.y = [mid.curr.tip.y, FK(2,4)];
        
        % append (x,y) location of bot link CoM:
        bot.curr.com.x = [bot.curr.com.x, FK(1,5)];
        bot.curr.com.y = [bot.curr.com.y, FK(2,5)];
        
        % append (x,y) location of bot link tip:
        bot.curr.tip.x = [bot.curr.tip.x, FK(1,6)];
        bot.curr.tip.y = [bot.curr.tip.y, FK(2,6)];
        
        % trace top link center of mass
        if p.Results.trace_top_com
            hold on;
            plot(top.curr.com.x, top.curr.com.y,'o-',...
                'Color', params.viz.colors.tracer.top,...
                'MarkerSize',2,'LineWidth',1,...
                'MarkerFaceColor', params.viz.colors.tracer.top,...
                'MarkerEdgeColor', params.viz.colors.tracer.top);
            hold off;
        end
        
        % trace tip of top link
        if p.Results.trace_top_tip
            hold on;
            plot(top.curr.tip.x, top.curr.tip.y,'o-',...
                'Color', params.viz.colors.tracer.top,...
                'MarkerSize',2,'LineWidth',1,...
                'MarkerFaceColor', params.viz.colors.tracer.top,...
                'MarkerEdgeColor', params.viz.colors.tracer.top);
            hold off;
        end
        
        % trace middle link center of mass
        if p.Results.trace_mid_com
            hold on;
            plot(mid.curr.com.x, mid.curr.com.y,'o-',...
                'Color',params.viz.colors.tracer.mid,...
                'MarkerSize',2,'LineWidth',1,...
                'MarkerFaceColor',params.viz.colors.tracer.mid,...
                'MarkerEdgeColor',params.viz.colors.tracer.mid);
            hold off;
        end
        
        % trace tip of middle link
        if p.Results.trace_mid_tip
            hold on;
            plot(mid.curr.tip.x, mid.curr.tip.y,'o-',...
                'Color',params.viz.colors.tracer.mid,...
                'MarkerSize',2,'LineWidth',1,...
                'MarkerFaceColor',params.viz.colors.tracer.mid,...
                'MarkerEdgeColor',params.viz.colors.tracer.mid);
            hold off;
        end
        
        % trace bottom link center of mass
        if p.Results.trace_bot_com
            hold on;
            plot(bot.curr.com.x, bot.curr.com.y,'o-',...
                'Color',params.viz.colors.tracer.bot,...
                'MarkerSize',2,'LineWidth',1,...
                'MarkerFaceColor',params.viz.colors.tracer.bot,...
                'MarkerEdgeColor',params.viz.colors.tracer.bot);
            hold off;
        end
        
        % trace tip of bottom link
        if p.Results.trace_bot_tip
            hold on;
            plot(bot.curr.tip.x, bot.curr.tip.y,'o-',...
                'Color',params.viz.colors.tracer.bot,...
                'MarkerSize',2,'LineWidth',1,...
                'MarkerFaceColor',params.viz.colors.tracer.bot,...
                'MarkerEdgeColor',params.viz.colors.tracer.bot);
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