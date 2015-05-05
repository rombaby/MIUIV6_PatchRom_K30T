.class public Lcom/android/internal/policy/impl/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static settingsPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "/data/data/com.myls.mylstabsettings/settings"

    sput-object v0, Lcom/android/internal/policy/impl/Utils;->settingsPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getListFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/internal/policy/impl/Utils;->settingsPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "fullname":Ljava/lang/String;
    const-string v4, ""

    .local v4, "str":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "file":Ljava/io/File;
    :goto_0
    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, ""

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLongPressAction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const-string v0, "none"

    .local v0, "action":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/policy/impl/Utils;->getListFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "str":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    return-object v0
.end method

.method public static getUnlockTime()I
    .locals 3

    .prologue
    const/16 v1, 0x2bc

    .local v1, "time":I
    const-string v2, "myls_unlock_time"

    invoke-static {v2}, Lcom/android/internal/policy/impl/Utils;->getListFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "str":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2bc

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x64

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static isFileExists(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method
