package models

import (
	"github.com/astaxie/beego"
	"github.com/dgrijalva/jwt-go"
	"time"
)

const key = "sinksmell"

func GenToken() string {
	claims := &jwt.StandardClaims{
		NotBefore: int64(time.Now().Unix()),
		ExpiresAt: int64(time.Now().Unix() + 1000),
		Issuer:    "sinksmell",
	}
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, claims)
	ss, err := token.SignedString([]byte(key))
	if err != nil {
		beego.Error(err)
		return ""
	}
	return ss
}

// 校验token是否有效
func CheckToken(token string) bool {
	_, err := jwt.Parse(token, func(*jwt.Token) (interface{}, error) {
		return key, nil
	})
	if err != nil {
		beego.BeeLogger.Info("parase with claims failed. %+v", err)
		return false
	}
	return true
}
