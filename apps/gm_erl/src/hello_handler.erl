-module(hello_handler).
-behaviour(cowboy_handler).
-export([init/2]).

init(Req, State) ->
	Json = jsx:encode(#{library => jsx, awesome => true}),
	Req_1 = cowboy_req:reply(
			200,
			#{<<"content-type">> => <<"application/json">>},
			Json,
			Req
		),
	{ok, Req_1, State}.
