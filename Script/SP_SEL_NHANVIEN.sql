USE [QLSVNhom]
GO
/****** Object:  StoredProcedure [dbo].[SP_SEL_NHANVIEN]    Script Date: 21/09/2020 11:52:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[SP_SEL_NHANVIEN]
AS
BEGIN
	SELECT MANV, HOTEN, EMAIL, CONVERT(VARCHAR(32), DecryptByASYMKEY(ASYMKEY_ID('RSA_1024_LAB3'),LUONG)) AS LUONGCB
	FROM NHANVIEN
END