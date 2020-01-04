package models

import "github.com/garyburd/redigo/redis"

var(
	// RedisPool
	RedisPool *redis.Pool
)

// InitRedisPool init redis
func InitRedisPool(){
	RedisPool =&redis.Pool{
		MaxIdle:16, // 最初连接数量
		MaxActive:0, // 最大连接数量 0表示按需创建
		IdleTimeout:300, // 连接关闭时间
		Dial: func() (redis.Conn, error) {
			return redis.Dial("tcp","127.0.0.1:6379")
		},
	}
}

// SetKey set key value into redis
func SetKey(key string, value interface{}){
	conn:=RedisPool.Get()
	defer conn.Close()
	conn.Do("SET",key, value)
}

// GetKey get value from redis by key
func GetKey(key string)string{
	return ""
}