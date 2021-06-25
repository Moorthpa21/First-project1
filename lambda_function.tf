data "archive_file" "Begin" {
    type          = "zip"
    source_file   = "Begin.py"
    output_path   = "lambda_function.zip"
}

resource "aws_lambda_function" "first_lambda" {
  filename         = "lambda_function.zip"
  function_name    = "first_lambda"
  role             = "${aws_iam_role.lambda_role.arn}"
  handler          = "Begin.first"
  source_code_hash = "${data.archive_file.Begin.output_base64sha256}"
  runtime          = "python3.7"
}


