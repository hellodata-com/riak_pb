%% Automatically generated, do not edit
%% Generated by gpb_compile version 3.21.1 on {{2016,6,2},{17,24,24}}

-ifndef(riak_yokozuna_pb).
-define(riak_yokozuna_pb, true).

-define(riak_yokozuna_pb_gpb_version, "3.21.1").

-ifndef('RPBYOKOZUNASCHEMAGETREQ_PB_H').
-define('RPBYOKOZUNASCHEMAGETREQ_PB_H', true).
-record(rpbyokozunaschemagetreq,
        {name                           % = 1, bytes
        }).
-endif.

-ifndef('RPBYOKOZUNASCHEMA_PB_H').
-define('RPBYOKOZUNASCHEMA_PB_H', true).
-record(rpbyokozunaschema,
        {name,                          % = 1, bytes
         content                        % = 2, bytes (optional)
        }).
-endif.

-ifndef('RPBYOKOZUNASCHEMAPUTREQ_PB_H').
-define('RPBYOKOZUNASCHEMAPUTREQ_PB_H', true).
-record(rpbyokozunaschemaputreq,
        {schema                         % = 1, {msg,rpbyokozunaschema}
        }).
-endif.

-ifndef('RPBYOKOZUNASCHEMAGETRESP_PB_H').
-define('RPBYOKOZUNASCHEMAGETRESP_PB_H', true).
-record(rpbyokozunaschemagetresp,
        {schema                         % = 1, {msg,rpbyokozunaschema}
        }).
-endif.

-ifndef('RPBYOKOZUNAINDEX_PB_H').
-define('RPBYOKOZUNAINDEX_PB_H', true).
-record(rpbyokozunaindex,
        {name,                          % = 1, bytes
         schema,                        % = 2, bytes (optional)
         n_val                          % = 3, uint32 (optional)
        }).
-endif.

-ifndef('RPBYOKOZUNAINDEXPUTREQ_PB_H').
-define('RPBYOKOZUNAINDEXPUTREQ_PB_H', true).
-record(rpbyokozunaindexputreq,
        {index,                         % = 1, {msg,rpbyokozunaindex}
         timeout                        % = 2, uint32 (optional)
        }).
-endif.

-ifndef('RPBYOKOZUNAINDEXGETREQ_PB_H').
-define('RPBYOKOZUNAINDEXGETREQ_PB_H', true).
-record(rpbyokozunaindexgetreq,
        {name                           % = 1, bytes (optional)
        }).
-endif.

-ifndef('RPBYOKOZUNAINDEXDELETEREQ_PB_H').
-define('RPBYOKOZUNAINDEXDELETEREQ_PB_H', true).
-record(rpbyokozunaindexdeletereq,
        {name                           % = 1, bytes
        }).
-endif.

-ifndef('RPBYOKOZUNAINDEXGETRESP_PB_H').
-define('RPBYOKOZUNAINDEXGETRESP_PB_H', true).
-record(rpbyokozunaindexgetresp,
        {index = []                     % = 1, [{msg,rpbyokozunaindex}]
        }).
-endif.

-endif.
