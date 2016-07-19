%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.23.0-29-ge5d7bfe

-ifndef(riak_ts_pb).
-define(riak_ts_pb, true).

-define(riak_ts_pb_gpb_version, "3.23.0-29-ge5d7bfe").

-ifndef('TSRANGE_PB_H').
-define('TSRANGE_PB_H', true).
-record(tsrange,
        {field_name,                    % = 1, bytes
         lower_bound,                   % = 2, sint64
         lower_bound_inclusive,         % = 3, bool
         upper_bound,                   % = 4, sint64
         upper_bound_inclusive,         % = 5, bool
         desc                           % = 6, bytes
        }).
-endif.

-ifndef('TSCOVERAGEENTRY_PB_H').
-define('TSCOVERAGEENTRY_PB_H', true).
-record(tscoverageentry,
        {ip,                            % = 1, bytes
         port,                          % = 2, uint32
         cover_context,                 % = 3, bytes
         range                          % = 4, {msg,tsrange} (optional)
        }).
-endif.

-ifndef('RPBMODFUN_PB_H').
-define('RPBMODFUN_PB_H', true).
-record(rpbmodfun,
        {module,                        % = 1, bytes
         function                       % = 2, bytes
        }).
-endif.

-ifndef('RPBCOMMITHOOK_PB_H').
-define('RPBCOMMITHOOK_PB_H', true).
-record(rpbcommithook,
        {modfun,                        % = 1, {msg,rpbmodfun} (optional)
         name                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBBUCKETPROPS_PB_H').
-define('RPBBUCKETPROPS_PB_H', true).
-record(rpbbucketprops,
        {n_val,                         % = 1, uint32 (optional)
         allow_mult,                    % = 2, bool (optional)
         last_write_wins,               % = 3, bool (optional)
         precommit = [],                % = 4, [{msg,rpbcommithook}]
         has_precommit = false,         % = 5, bool (optional)
         postcommit = [],               % = 6, [{msg,rpbcommithook}]
         has_postcommit = false,        % = 7, bool (optional)
         chash_keyfun,                  % = 8, {msg,rpbmodfun} (optional)
         linkfun,                       % = 9, {msg,rpbmodfun} (optional)
         old_vclock,                    % = 10, uint32 (optional)
         young_vclock,                  % = 11, uint32 (optional)
         big_vclock,                    % = 12, uint32 (optional)
         small_vclock,                  % = 13, uint32 (optional)
         pr,                            % = 14, uint32 (optional)
         r,                             % = 15, uint32 (optional)
         w,                             % = 16, uint32 (optional)
         pw,                            % = 17, uint32 (optional)
         dw,                            % = 18, uint32 (optional)
         rw,                            % = 19, uint32 (optional)
         basic_quorum,                  % = 20, bool (optional)
         notfound_ok,                   % = 21, bool (optional)
         backend,                       % = 22, bytes (optional)
         search,                        % = 23, bool (optional)
         repl,                          % = 24, {enum,'RpbBucketProps.RpbReplMode'} (optional)
         search_index,                  % = 25, bytes (optional)
         datatype,                      % = 26, bytes (optional)
         consistent,                    % = 27, bool (optional)
         write_once                     % = 28, bool (optional)
        }).
-endif.

-ifndef('RPBPAIR_PB_H').
-define('RPBPAIR_PB_H', true).
-record(rpbpair,
        {key,                           % = 1, bytes
         value                          % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBRESETBUCKETREQ_PB_H').
-define('RPBRESETBUCKETREQ_PB_H', true).
-record(rpbresetbucketreq,
        {bucket,                        % = 1, bytes
         type                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('TSINTERPOLATION_PB_H').
-define('TSINTERPOLATION_PB_H', true).
-record(tsinterpolation,
        {base,                          % = 1, bytes
         interpolations = []            % = 2, [{msg,rpbpair}]
        }).
-endif.

-ifndef('TSCOVERAGEREQ_PB_H').
-define('TSCOVERAGEREQ_PB_H', true).
-record(tscoveragereq,
        {query,                         % = 1, {msg,tsinterpolation} (optional)
         table,                         % = 2, bytes
         replace_cover,                 % = 3, bytes (optional)
         unavailable_cover = []         % = 4, [bytes]
        }).
-endif.

-ifndef('TSCELL_PB_H').
-define('TSCELL_PB_H', true).
-record(tscell,
        {varchar_value,                 % = 1, bytes (optional)
         sint64_value,                  % = 2, sint64 (optional)
         timestamp_value,               % = 3, sint64 (optional)
         boolean_value,                 % = 4, bool (optional)
         double_value                   % = 5, double (optional)
        }).
-endif.

-ifndef('TSDELREQ_PB_H').
-define('TSDELREQ_PB_H', true).
-record(tsdelreq,
        {table,                         % = 1, bytes
         key = [],                      % = 2, [{msg,tscell}]
         vclock,                        % = 3, bytes (optional)
         timeout                        % = 4, uint32 (optional)
        }).
-endif.

-ifndef('TSROW_PB_H').
-define('TSROW_PB_H', true).
-record(tsrow,
        {cells = []                     % = 1, [{msg,tscell}]
        }).
-endif.

-ifndef('TSCOLUMNDESCRIPTION_PB_H').
-define('TSCOLUMNDESCRIPTION_PB_H', true).
-record(tscolumndescription,
        {name,                          % = 1, bytes
         type                           % = 2, {enum,'TsColumnType'}
        }).
-endif.

-ifndef('TSPUTREQ_PB_H').
-define('TSPUTREQ_PB_H', true).
-record(tsputreq,
        {table,                         % = 1, bytes
         columns = [],                  % = 2, [{msg,tscolumndescription}]
         rows = []                      % = 3, [{msg,tsrow}]
        }).
-endif.

-ifndef('TSGETREQ_PB_H').
-define('TSGETREQ_PB_H', true).
-record(tsgetreq,
        {table,                         % = 1, bytes
         key = [],                      % = 2, [{msg,tscell}]
         timeout                        % = 3, uint32 (optional)
        }).
-endif.

-ifndef('TSDELRESP_PB_H').
-define('TSDELRESP_PB_H', true).
-record(tsdelresp,
        {
        }).
-endif.

-ifndef('TSGETRESP_PB_H').
-define('TSGETRESP_PB_H', true).
-record(tsgetresp,
        {columns = [],                  % = 1, [{msg,tscolumndescription}]
         rows = []                      % = 2, [{msg,tsrow}]
        }).
-endif.

-ifndef('RPBSETBUCKETTYPEREQ_PB_H').
-define('RPBSETBUCKETTYPEREQ_PB_H', true).
-record(rpbsetbuckettypereq,
        {type,                          % = 1, bytes
         props                          % = 2, {msg,rpbbucketprops}
        }).
-endif.

-ifndef('RPBGETBUCKETTYPEREQ_PB_H').
-define('RPBGETBUCKETTYPEREQ_PB_H', true).
-record(rpbgetbuckettypereq,
        {type                           % = 1, bytes
        }).
-endif.

-ifndef('TSLISTKEYSREQ_PB_H').
-define('TSLISTKEYSREQ_PB_H', true).
-record(tslistkeysreq,
        {table,                         % = 1, bytes
         timeout                        % = 2, uint32 (optional)
        }).
-endif.

-ifndef('RPBGETSERVERINFORESP_PB_H').
-define('RPBGETSERVERINFORESP_PB_H', true).
-record(rpbgetserverinforesp,
        {node,                          % = 1, bytes (optional)
         server_version                 % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBSETBUCKETREQ_PB_H').
-define('RPBSETBUCKETREQ_PB_H', true).
-record(rpbsetbucketreq,
        {bucket,                        % = 1, bytes
         props,                         % = 2, {msg,rpbbucketprops}
         type                           % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBGETBUCKETREQ_PB_H').
-define('RPBGETBUCKETREQ_PB_H', true).
-record(rpbgetbucketreq,
        {bucket,                        % = 1, bytes
         type                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('TSCOVERAGERESP_PB_H').
-define('TSCOVERAGERESP_PB_H', true).
-record(tscoverageresp,
        {entries = []                   % = 1, [{msg,tscoverageentry}]
        }).
-endif.

-ifndef('TSQUERYRESP_PB_H').
-define('TSQUERYRESP_PB_H', true).
-record(tsqueryresp,
        {columns = [],                  % = 1, [{msg,tscolumndescription}]
         rows = [],                     % = 2, [{msg,tsrow}]
         done = true                    % = 3, bool (optional)
        }).
-endif.

-ifndef('RPBAUTHREQ_PB_H').
-define('RPBAUTHREQ_PB_H', true).
-record(rpbauthreq,
        {user,                          % = 1, bytes
         password                       % = 2, bytes
        }).
-endif.

-ifndef('TSQUERYREQ_PB_H').
-define('TSQUERYREQ_PB_H', true).
-record(tsqueryreq,
        {query,                         % = 1, {msg,tsinterpolation} (optional)
         stream = false,                % = 2, bool (optional)
         cover_context                  % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBGETBUCKETRESP_PB_H').
-define('RPBGETBUCKETRESP_PB_H', true).
-record(rpbgetbucketresp,
        {props                          % = 1, {msg,rpbbucketprops}
        }).
-endif.

-ifndef('RPBERRORRESP_PB_H').
-define('RPBERRORRESP_PB_H', true).
-record(rpberrorresp,
        {errmsg,                        % = 1, bytes
         errcode                        % = 2, uint32
        }).
-endif.

-ifndef('TSLISTKEYSRESP_PB_H').
-define('TSLISTKEYSRESP_PB_H', true).
-record(tslistkeysresp,
        {keys = [],                     % = 1, [{msg,tsrow}]
         done                           % = 2, bool (optional)
        }).
-endif.

-ifndef('TSPUTRESP_PB_H').
-define('TSPUTRESP_PB_H', true).
-record(tsputresp,
        {
        }).
-endif.

-endif.
