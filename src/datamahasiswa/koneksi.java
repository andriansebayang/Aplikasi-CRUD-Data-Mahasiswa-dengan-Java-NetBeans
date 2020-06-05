package datamahasiswa;

import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;// digunakan untuk mengimpor class MysqlDataSource dari package com.mysql.jdbc.jdbc2.optional
import java.sql.Connection;// digunakan untuk mengimpor class Connection dari package java.sql
import java.sql.SQLException;// digunakan untuk mengimpor class SQLException dari package java.sql

public class koneksi {//untuk mendeklarasikan class bernama koneksi

    static Connection con;//untuk mendeklarasikan objek bernama con dari class Connection

    public static Connection connection() {//untuk mendeklarasikan method/fungsi yang bernama connection()
        if (con == null) {
            MysqlDataSource data = new MysqlDataSource();//untuk mendeklarasikan objek bernama data dari class MysqlDataSource()
            data.setDatabaseName("data_mahasiswa");//untuk men-set database yang digunakan pada objek data
            data.setUser("root");//untuk men-set user yang digunakan pada objek data
            data.setPassword("");//untuk men-set password user yang digunakan pada objek data
            try {
                con = data.getConnection();//untuk mendeklarasikan variabel con yang akan memanggil method getConnection() dari objek data
            } catch (SQLException ex) {//exception handling
                ex.printStackTrace();
            }
        }
        return con;//me-return nilai variabel con
    }
}