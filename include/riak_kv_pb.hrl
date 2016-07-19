%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.23.0-29-ge5d7bfe

-ifndef(riak_kv_pb).
-define(riak_kv_pb, true).

-define(riak_kv_pb_gpb_version, "3.23.0-29-ge5d7bfe").

-ifndef('RPBLINK_PB_H').
-define('RPBLINK_PB_H', true).
-record(rpblink,
        {bucket,                        % = 1, bytes (optional)
         key,                           % = 2, bytes (optional)
         tag                            % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBPAIR_PB_H').
-define('RPBPAIR_PB_H', true).
-record(rpbpair,
        {key,                           % = 1, bytes
         value                          % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBCONTENT_PB_H').
-define('RPBCONTENT_PB_H', true).
-record(rpbcontent,
        {value,                         % = 1, bytes
         content_type,                  % = 2, bytes (optional)
         charset,                       % = 3, bytes (optional)
         content_encoding,              % = 4, bytes (optional)
         vtag,                          % = 5, bytes (optional)
         links = [],                    % = 6, [{msg,rpblink}]
         last_mod,                      % = 7, uint32 (optional)
         last_mod_usecs,                % = 8, uint32 (optional)
         usermeta = [],                 % = 9, [{msg,rpbpair}]
         indexes = [],                  % = 10, [{msg,rpbpair}]
         deleted                        % = 11, bool (optional)
        }).
-endif.

-ifndef('RPBGETRESP_PB_H').
-define('RPBGETRESP_PB_H', true).
-record(rpbgetresp,
        {content = [],                  % = 1, [{msg,rpbcontent}]
         vclock,                        % = 2, bytes (optional)
         unchanged                      % = 3, bool (optional)
        }).
-endif.

-ifndef('RPBINDEXOBJECT_PB_H').
-define('RPBINDEXOBJECT_PB_H', true).
-record(rpbindexobject,
        {key,                           % = 1, bytes
         object                         % = 2, {msg,rpbgetresp}
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

-ifndef('RPBRESETBUCKETREQ_PB_H').
-define('RPBRESETBUCKETREQ_PB_H', true).
-record(rpbresetbucketreq,
        {bucket,                        % = 1, bytes
         type                           % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBCSBUCKETREQ_PB_H').
-define('RPBCSBUCKETREQ_PB_H', true).
-record(rpbcsbucketreq,
        {bucket,                        % = 1, bytes
         start_key,                     % = 2, bytes
         end_key,                       % = 3, bytes (optional)
         start_incl = true,             % = 4, bool (optional)
         end_incl = false,              % = 5, bool (optional)
         continuation,                  % = 6, bytes (optional)
         max_results,                   % = 7, uint32 (optional)
         timeout,                       % = 8, uint32 (optional)
         type,                          % = 9, bytes (optional)
         cover_context                  % = 10, bytes (optional)
        }).
-endif.

-ifndef('RPBSETCLIENTIDREQ_PB_H').
-define('RPBSETCLIENTIDREQ_PB_H', true).
-record(rpbsetclientidreq,
        {client_id                      % = 1, bytes
        }).
-endif.

-ifndef('RPBCOUNTERUPDATEREQ_PB_H').
-define('RPBCOUNTERUPDATEREQ_PB_H', true).
-record(rpbcounterupdatereq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes
         amount,                        % = 3, sint64
         w,                             % = 4, uint32 (optional)
         dw,                            % = 5, uint32 (optional)
         pw,                            % = 6, uint32 (optional)
         returnvalue                    % = 7, bool (optional)
        }).
-endif.

-ifndef('RPBLISTBUCKETSREQ_PB_H').
-define('RPBLISTBUCKETSREQ_PB_H', true).
-record(rpblistbucketsreq,
        {timeout,                       % = 1, uint32 (optional)
         stream,                        % = 2, bool (optional)
         type                           % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBBUCKETKEYPREFLISTITEM_PB_H').
-define('RPBBUCKETKEYPREFLISTITEM_PB_H', true).
-record(rpbbucketkeypreflistitem,
        {partition,                     % = 1, int64
         node,                          % = 2, bytes
         primary                        % = 3, bool
        }).
-endif.

-ifndef('RPBGETBUCKETKEYPREFLISTRESP_PB_H').
-define('RPBGETBUCKETKEYPREFLISTRESP_PB_H', true).
-record(rpbgetbucketkeypreflistresp,
        {preflist = []                  % = 1, [{msg,rpbbucketkeypreflistitem}]
        }).
-endif.

-ifndef('RPBLISTBUCKETSRESP_PB_H').
-define('RPBLISTBUCKETSRESP_PB_H', true).
-record(rpblistbucketsresp,
        {buckets = [],                  % = 1, [bytes]
         done                           % = 2, bool (optional)
        }).
-endif.

-ifndef('RPBPUTRESP_PB_H').
-define('RPBPUTRESP_PB_H', true).
-record(rpbputresp,
        {content = [],                  % = 1, [{msg,rpbcontent}]
         vclock,                        % = 2, bytes (optional)
         key                            % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBGETCLIENTIDRESP_PB_H').
-define('RPBGETCLIENTIDRESP_PB_H', true).
-record(rpbgetclientidresp,
        {client_id                      % = 1, bytes
        }).
-endif.

-ifndef('RPBCOVERAGEENTRY_PB_H').
-define('RPBCOVERAGEENTRY_PB_H', true).
-record(rpbcoverageentry,
        {ip,                            % = 1, bytes
         port,                          % = 2, uint32
         keyspace_desc,                 % = 3, bytes (optional)
         cover_context                  % = 4, bytes
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

-ifndef('RPBDELREQ_PB_H').
-define('RPBDELREQ_PB_H', true).
-record(rpbdelreq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes
         rw,                            % = 3, uint32 (optional)
         vclock,                        % = 4, bytes (optional)
         r,                             % = 5, uint32 (optional)
         w,                             % = 6, uint32 (optional)
         pr,                            % = 7, uint32 (optional)
         pw,                            % = 8, uint32 (optional)
         dw,                            % = 9, uint32 (optional)
         timeout,                       % = 10, uint32 (optional)
         sloppy_quorum,                 % = 11, bool (optional)
         n_val,                         % = 12, uint32 (optional)
         type                           % = 13, bytes (optional)
        }).
-endif.

-ifndef('RPBPUTREQ_PB_H').
-define('RPBPUTREQ_PB_H', true).
-record(rpbputreq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes (optional)
         vclock,                        % = 3, bytes (optional)
         content,                       % = 4, {msg,rpbcontent}
         w,                             % = 5, uint32 (optional)
         dw,                            % = 6, uint32 (optional)
         return_body,                   % = 7, bool (optional)
         pw,                            % = 8, uint32 (optional)
         if_not_modified,               % = 9, bool (optional)
         if_none_match,                 % = 10, bool (optional)
         return_head,                   % = 11, bool (optional)
         timeout,                       % = 12, uint32 (optional)
         asis,                          % = 13, bool (optional)
         sloppy_quorum,                 % = 14, bool (optional)
         n_val,                         % = 15, uint32 (optional)
         type                           % = 16, bytes (optional)
        }).
-endif.

-ifndef('RPBGETREQ_PB_H').
-define('RPBGETREQ_PB_H', true).
-record(rpbgetreq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes
         r,                             % = 3, uint32 (optional)
         pr,                            % = 4, uint32 (optional)
         basic_quorum,                  % = 5, bool (optional)
         notfound_ok,                   % = 6, bool (optional)
         if_modified,                   % = 7, bytes (optional)
         head,                          % = 8, bool (optional)
         deletedvclock,                 % = 9, bool (optional)
         timeout,                       % = 10, uint32 (optional)
         sloppy_quorum,                 % = 11, bool (optional)
         n_val,                         % = 12, uint32 (optional)
         type                           % = 13, bytes (optional)
        }).
-endif.

-ifndef('RPBGETBUCKETKEYPREFLISTREQ_PB_H').
-define('RPBGETBUCKETKEYPREFLISTREQ_PB_H', true).
-record(rpbgetbucketkeypreflistreq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes
         type                           % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBINDEXRESP_PB_H').
-define('RPBINDEXRESP_PB_H', true).
-record(rpbindexresp,
        {keys = [],                     % = 1, [bytes]
         results = [],                  % = 2, [{msg,rpbpair}]
         continuation,                  % = 3, bytes (optional)
         done                           % = 4, bool (optional)
        }).
-endif.

-ifndef('RPBGETSERVERINFORESP_PB_H').
-define('RPBGETSERVERINFORESP_PB_H', true).
-record(rpbgetserverinforesp,
        {node,                          % = 1, bytes (optional)
         server_version                 % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBCSBUCKETRESP_PB_H').
-define('RPBCSBUCKETRESP_PB_H', true).
-record(rpbcsbucketresp,
        {objects = [],                  % = 1, [{msg,rpbindexobject}]
         continuation,                  % = 2, bytes (optional)
         done                           % = 3, bool (optional)
        }).
-endif.

-ifndef('RPBMAPREDRESP_PB_H').
-define('RPBMAPREDRESP_PB_H', true).
-record(rpbmapredresp,
        {phase,                         % = 1, uint32 (optional)
         response,                      % = 2, bytes (optional)
         done                           % = 3, bool (optional)
        }).
-endif.

-ifndef('RPBCOVERAGEREQ_PB_H').
-define('RPBCOVERAGEREQ_PB_H', true).
-record(rpbcoveragereq,
        {type,                          % = 1, bytes (optional)
         bucket,                        % = 2, bytes
         min_partitions,                % = 3, uint32 (optional)
         replace_cover,                 % = 4, bytes (optional)
         unavailable_cover = []         % = 5, [bytes]
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

-ifndef('RPBLISTKEYSRESP_PB_H').
-define('RPBLISTKEYSRESP_PB_H', true).
-record(rpblistkeysresp,
        {keys = [],                     % = 1, [bytes]
         done                           % = 2, bool (optional)
        }).
-endif.

-ifndef('RPBINDEXREQ_PB_H').
-define('RPBINDEXREQ_PB_H', true).
-record(rpbindexreq,
        {bucket,                        % = 1, bytes
         index,                         % = 2, bytes
         qtype,                         % = 3, {enum,'RpbIndexReq.IndexQueryType'}
         key,                           % = 4, bytes (optional)
         range_min,                     % = 5, bytes (optional)
         range_max,                     % = 6, bytes (optional)
         return_terms,                  % = 7, bool (optional)
         stream,                        % = 8, bool (optional)
         max_results,                   % = 9, uint32 (optional)
         continuation,                  % = 10, bytes (optional)
         timeout,                       % = 11, uint32 (optional)
         type,                          % = 12, bytes (optional)
         term_regex,                    % = 13, bytes (optional)
         pagination_sort,               % = 14, bool (optional)
         cover_context,                 % = 15, bytes (optional)
         return_body                    % = 16, bool (optional)
        }).
-endif.

-ifndef('RPBCOUNTERGETREQ_PB_H').
-define('RPBCOUNTERGETREQ_PB_H', true).
-record(rpbcountergetreq,
        {bucket,                        % = 1, bytes
         key,                           % = 2, bytes
         r,                             % = 3, uint32 (optional)
         pr,                            % = 4, uint32 (optional)
         basic_quorum,                  % = 5, bool (optional)
         notfound_ok                    % = 6, bool (optional)
        }).
-endif.

-ifndef('RPBLISTKEYSREQ_PB_H').
-define('RPBLISTKEYSREQ_PB_H', true).
-record(rpblistkeysreq,
        {bucket,                        % = 1, bytes
         timeout,                       % = 2, uint32 (optional)
         type                           % = 3, bytes (optional)
        }).
-endif.

-ifndef('RPBAUTHREQ_PB_H').
-define('RPBAUTHREQ_PB_H', true).
-record(rpbauthreq,
        {user,                          % = 1, bytes
         password                       % = 2, bytes
        }).
-endif.

-ifndef('RPBMAPREDREQ_PB_H').
-define('RPBMAPREDREQ_PB_H', true).
-record(rpbmapredreq,
        {request,                       % = 1, bytes
         content_type                   % = 2, bytes
        }).
-endif.

-ifndef('RPBCOUNTERUPDATERESP_PB_H').
-define('RPBCOUNTERUPDATERESP_PB_H', true).
-record(rpbcounterupdateresp,
        {value                          % = 1, sint64 (optional)
        }).
-endif.

-ifndef('RPBGETBUCKETRESP_PB_H').
-define('RPBGETBUCKETRESP_PB_H', true).
-record(rpbgetbucketresp,
        {props                          % = 1, {msg,rpbbucketprops}
        }).
-endif.

-ifndef('RPBCOUNTERGETRESP_PB_H').
-define('RPBCOUNTERGETRESP_PB_H', true).
-record(rpbcountergetresp,
        {value                          % = 1, sint64 (optional)
        }).
-endif.

-ifndef('RPBINDEXBODYRESP_PB_H').
-define('RPBINDEXBODYRESP_PB_H', true).
-record(rpbindexbodyresp,
        {objects = [],                  % = 1, [{msg,rpbindexobject}]
         continuation,                  % = 2, bytes (optional)
         done                           % = 3, bool (optional)
        }).
-endif.

-ifndef('RPBCOVERAGERESP_PB_H').
-define('RPBCOVERAGERESP_PB_H', true).
-record(rpbcoverageresp,
        {entries = []                   % = 1, [{msg,rpbcoverageentry}]
        }).
-endif.

-ifndef('RPBERRORRESP_PB_H').
-define('RPBERRORRESP_PB_H', true).
-record(rpberrorresp,
        {errmsg,                        % = 1, bytes
         errcode                        % = 2, uint32
        }).
-endif.

-endif.
