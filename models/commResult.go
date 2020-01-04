package models

type CommResult struct {
	Code int    `json:"code"`
	Msg  string `json:"msg"`
}

type TopicsResult struct {
	Code   int      `json:"code"`
	Msg    string   `json:"msg"`
	Topics []*Topic `json:"topics"`
}

func NewCommResult() *CommResult {
	return &CommResult{}
}
