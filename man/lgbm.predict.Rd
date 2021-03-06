% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lgbm.predict.R
\name{lgbm.predict}
\alias{lgbm.predict}
\title{LightGBM Prediction}
\usage{
lgbm.predict(model, y_pred = NA, x_pred = NA, SVMLight = is(x_pred,
  "dgCMatrix"), data_has_label = FALSE, lgbm_path = ifelse(is.list(model),
  model[["lgbm"]], getwd()), workingdir = ifelse(is.list(model),
  model[["Path"]], getwd()), input_model = ifelse(is.list(model),
  model[["Name"]], "lgbm_model.txt"), pred_conf = "lgbm_pred.conf",
  predict_leaf_index = FALSE, verbose = TRUE,
  data_name = ifelse(is.list(model) & is.null(dim(x_pred)), model[["Valid"]],
  paste0("lgbm_test", ifelse(SVMLight, ".svm", ".csv"))), files_exist = TRUE,
  output_preds = "lgbm_predict_result.txt",
  data.table = exists("data.table"))
}
\arguments{
\item{model}{Type: list. The model file. If a character vector is provided, it is considered to be the model which is going to be saved as \code{input_model}. If a list is provided, it is used to setup to fetch the correct variables, which you can override by setting the arguments manually. If a single value is provided (like \code{NA}), then it is ignored and uses the other arguments to fetch the model locally.}

\item{y_pred}{Type: vector. The validation labels. Leave it alone unless you know what you are doing. Defaults to \code{NA}.}

\item{x_pred}{Type: data.table (preferred), data.frame, or dgCMatrix (with \code{SVMLight = TRUE}). The validation features. Defaults to \code{NA}.}

\item{SVMLight}{Type: boolean. Whether the input is a dgCMatrix to be output to SVMLight format. Setting this to \code{TRUE} enforces you must provide labels separately (in \code{y_train}) and headers will be ignored. This is default behavior of SVMLight format. Defaults to \code{is(x_pred, "dgCMatrix")}.}

\item{data_has_label}{Type: boolean. Whether the data has labels or not. Do not modify this. Defaults to \code{FALSE}.}

\item{lgbm_path}{Type: character. Where is stored LightGBM? Include only the folder to it. Defaults to \code{ifelse(is.list(model), model[["File"]], getwd())}, which means "take the model LightGBM path if provided the model list, else take the default working directory".}

\item{workingdir}{Type: character. The working directory used for LightGBM. Defaults to \code{ifelse(is.list(model), model[["Path"]], getwd())}, which means "take the model working directory if provided the model list, else take the default working directory".}

\item{input_model}{Type: character. The file name of the model. Defaults to \code{ifelse(is.list(model), model[["Name"]], 'lgbm_model.txt')}, which means "take the input model name if provided the model list, else take "lgbm_model.txt".}

\item{pred_conf}{Type: character. The name of the pred_conf file for the model. Defaults to \code{'lgbm_pred.conf'}.}

\item{predict_leaf_index}{Type: boolean. Should LightGBM predict leaf indexes instead of pure predictions? Defaults to \code{FALSE}.}

\item{verbose}{Type: boolean. Whether to print to console verbose information. When FALSE, the printing is diverted to \code{"diverted_verbose.txt"}. Defaults to \code{TRUE}. Might not work when your lgbm_path has a space.}

\item{data_name}{Type: character. The file output name for the vaildation file. Defaults to \code{ifelse(is.list(model) & is.null(dim(x_pred)), model[["Valid"]], paste0('lgbm_test', ifelse(SVMLight, '.svm', '.csv')))}, which means "take the validation file name if provided the model list and x_pred is left as is, else take "lgbm_test.csv". Original name is \code{val_name}.}

\item{files_exist}{Type: boolean. Whether to NOT create CSV files for the prediction data, if already created. Defaults to \code{TRUE}.}

\item{output_preds}{Type: character. The output prediction file. Defaults to \code{'lgbm_predict_result.txt'}. Original name is \code{output_result}.}

\item{data.table}{Type: boolean. Whether to use data.table to read data (returns a data.table). Defaults to \code{exists("data.table")}.}
}
\value{
The predictions as a vector.
}
\description{
This function allows to run predictions on provided data.
}
\details{
If for some reason you lose the ability to print in the console, run \code{sink()} in the console several times until you get an error.
}
\examples{
#None yet.

}

