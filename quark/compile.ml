let _ =
  let lexbuf = Lexing.from_channel stdin in
  let ast = Parser.top_level Scanner.token lexbuf in

  (*TODO let sast = Semantic.check_program ast in
  let c_sast = gen_pretty_c sast in
  let code = gen_program c_sast in
  output_string outfile code*)

  let outfile = open_out "output.cpp" in
  output_string stdout "hi mars" (* TODO change stdout > outfile *)
