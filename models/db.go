package models

import (
	"github.com/astaxie/beego/orm"
	"fmt"
	"github.com/astaxie/beego"
	_ "github.com/go-sql-driver/mysql"
)

const (
	DB_DRIVER = "mysql"
	//DB_URL="root:cxx15755599659@tcp(127.0.0.1:3306)/myblog"
)

func RegisterDB() {
	user := beego.AppConfig.String("mysqluser")
	pwd := beego.AppConfig.String("mysqlpass")
	url := beego.AppConfig.String("mysqlurls")
	db := beego.AppConfig.String("mysqldb")
	DB_URL := fmt.Sprintf("%s:%s@tcp(%s)/%s", user, pwd, url, db)
	orm.RegisterDriver(DB_DRIVER, orm.DRMySQL)
	orm.RegisterModel(new(Topic), new(Label), new(Category))
	orm.RegisterDataBase("default", "mysql", DB_URL)
}
