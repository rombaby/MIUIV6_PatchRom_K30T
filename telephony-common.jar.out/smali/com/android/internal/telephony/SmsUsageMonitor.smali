.class public Lcom/android/internal/telephony/SmsUsageMonitor;
.super Ljava/lang/Object;
.source "SmsUsageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;,
        Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserver;,
        Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    }
.end annotation


# static fields
.field private static final ATTR_COUNTRY:Ljava/lang/String; = "country"

.field private static final ATTR_FREE:Ljava/lang/String; = "free"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE_SMS_POLICY:Ljava/lang/String; = "sms-policy"

.field private static final ATTR_PATTERN:Ljava/lang/String; = "pattern"

.field private static final ATTR_PREMIUM:Ljava/lang/String; = "premium"

.field private static final ATTR_STANDARD:Ljava/lang/String; = "standard"

.field static final CATEGORY_FREE_SHORT_CODE:I = 0x1

.field static final CATEGORY_NOT_SHORT_CODE:I = 0x0

.field static final CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field static final CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field static final CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field private static final DBG:Z = false

.field private static final DEFAULT_SMS_CHECK_PERIOD:I = 0xea60

.field private static final DEFAULT_SMS_MAX_COUNT:I = 0x1e

.field private static final PACKAGE_NAME_LENOVO_MMS:Ljava/lang/String; = "com.lenovo.ideafriend"

.field public static final PREMIUM_SMS_PERMISSION_ALWAYS_ALLOW:I = 0x3

.field public static final PREMIUM_SMS_PERMISSION_ASK_USER:I = 0x1

.field public static final PREMIUM_SMS_PERMISSION_NEVER_ALLOW:I = 0x2

.field public static final PREMIUM_SMS_PERMISSION_UNKNOWN:I = 0x0

.field private static final SHORT_CODE_PATH:Ljava/lang/String; = "/data/misc/sms/codes"

.field private static final SMS_POLICY_FILE_DIRECTORY:Ljava/lang/String; = "/data/misc/sms"

.field private static final SMS_POLICY_FILE_NAME:Ljava/lang/String; = "premium_sms_policy.xml"

.field private static final TAG:Ljava/lang/String; = "SmsUsageMonitor"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_SHORTCODE:Ljava/lang/String; = "shortcode"

.field private static final TAG_SHORTCODES:Ljava/lang/String; = "shortcodes"

.field private static final TAG_SMS_POLICY_BODY:Ljava/lang/String; = "premium-sms-policy"

.field private static final VDBG:Z


# instance fields
.field private final mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCheckPeriod:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentCountry:Ljava/lang/String;

.field private mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

.field private final mMaxAllowed:I

.field private final mPatternFile:Ljava/io/File;

.field private mPatternFileLastModified:J

.field private mPolicyFile:Landroid/util/AtomicFile;

.field private final mPremiumSmsPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

.field private final mSmsStamp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    .line 126
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/sms/codes"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    .line 135
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    .line 259
    iput-object p1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 262
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "sms_outgoing_check_max_count"

    const/16 v2, 0x1e

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    .line 266
    const-string v1, "sms_outgoing_check_interval_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    .line 270
    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;-><init>(Landroid/content/Context;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    .line 272
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->loadPremiumSmsPolicyDb()V

    .line 273
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SmsUsageMonitor;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->writePremiumSmsPolicyDb()V

    return-void
.end method

.method private static checkCallerIsSystemOrPhoneApp()V
    .locals 5

    .prologue
    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 608
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 609
    .local v0, "appId":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3e9

    if-eq v0, v2, :cond_0

    if-nez v1, :cond_1

    .line 610
    :cond_0
    return-void

    .line 612
    :cond_1
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disallowed call for uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 590
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 591
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_1

    .line 604
    :cond_0
    return-void

    .line 595
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 597
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 598
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 602
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 7
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, "patternReader":Ljava/io/FileReader;
    const/4 v1, 0x0

    .line 284
    .local v1, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .local v3, "patternReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 286
    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 287
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 293
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 294
    if-eqz v3, :cond_0

    .line 296
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v2, v3

    .line 300
    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    :goto_1
    return-object v4

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v4, "SmsUsageMonitor"

    const-string v5, "Short Code Pattern File not found"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 294
    if-eqz v2, :cond_1

    .line 296
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 300
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 290
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_5
    const-string v4, "SmsUsageMonitor"

    const-string v5, "XML parser exception reading short code pattern file"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 293
    iget-object v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 294
    if-eqz v2, :cond_1

    .line 296
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 297
    :catch_2
    move-exception v4

    goto :goto_3

    .line 293
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v4

    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    .line 294
    if-eqz v2, :cond_2

    .line 296
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 297
    :cond_2
    :goto_6
    throw v4

    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_3
    move-exception v5

    goto :goto_0

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v5

    goto :goto_6

    .line 293
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_5

    .line 290
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_4

    .line 288
    .end local v2    # "patternReader":Ljava/io/FileReader;
    .restart local v3    # "patternReader":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v2, v3

    .end local v3    # "patternReader":Ljava/io/FileReader;
    .restart local v2    # "patternReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 3
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 304
    const v0, 0x10f000f

    .line 305
    .local v0, "id":I
    const/4 v1, 0x0

    .line 307
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 308
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 310
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v2
.end method

.method private getPatternMatcherFromXmlParser(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "country"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 317
    :try_start_0
    const-string v7, "shortcodes"

    invoke-static {p1, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 321
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 322
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 323
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Parsing pattern data found null"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "element":Ljava/lang/String;
    :goto_1
    move-object v7, v8

    .line 347
    :goto_2
    return-object v7

    .line 327
    .restart local v2    # "element":Ljava/lang/String;
    :cond_1
    const-string v7, "shortcode"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 328
    const/4 v7, 0x0

    const-string v9, "country"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "currentCountry":Ljava/lang/String;
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 331
    const/4 v7, 0x0

    const-string v9, "pattern"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 332
    .local v4, "pattern":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "premium"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 333
    .local v5, "premium":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "free"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "free":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "standard"

    invoke-interface {p1, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "standard":Ljava/lang/String;
    new-instance v7, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-direct {v7, v4, v5, v3, v6}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 341
    .end local v0    # "currentCountry":Ljava/lang/String;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "free":Ljava/lang/String;
    .end local v4    # "pattern":Ljava/lang/String;
    .end local v5    # "premium":Ljava/lang/String;
    .end local v6    # "standard":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "XML parser exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 338
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "element":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 343
    .end local v2    # "element":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 344
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "SmsUsageMonitor"

    const-string v9, "I/O exception reading short code patterns"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isUnderLimit(Ljava/util/ArrayList;I)Z
    .locals 10
    .param p2, "smsWaiting"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, "sent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 636
    .local v2, "ct":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v8, v4

    sub-long v0, v6, v8

    .line 640
    .local v0, "beginCheckPeriod":J
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v6, v0

    if-gez v4, :cond_0

    .line 641
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, p2

    iget v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mMaxAllowed:I

    if-gt v4, v6, :cond_2

    .line 645
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, p2, :cond_1

    .line 646
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 648
    :cond_1
    const/4 v4, 0x1

    .line 650
    .end local v3    # "i":I
    :goto_2
    return v4

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method private loadPremiumSmsPolicyDb()V
    .locals 11

    .prologue
    .line 445
    iget-object v8, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v8

    .line 446
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    if-nez v7, :cond_0

    .line 447
    new-instance v0, Ljava/io/File;

    const-string v7, "/data/misc/sms"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 448
    .local v0, "dir":Ljava/io/File;
    new-instance v7, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "premium_sms_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    .line 450
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 452
    const/4 v3, 0x0

    .line 454
    .local v3, "infile":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v7}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    .line 455
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 456
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v5, v3, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 458
    const-string v7, "premium-sms-policy"

    invoke-static {v5, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 461
    :goto_0
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 463
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 464
    .local v2, "element":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 491
    if-eqz v3, :cond_0

    .line 493
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 499
    .end local v0    # "dir":Ljava/io/File;
    .end local v2    # "element":Ljava/lang/String;
    .end local v3    # "infile":Ljava/io/FileInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 500
    return-void

    .line 466
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "infile":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    :try_start_4
    const-string v7, "package"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 467
    const/4 v7, 0x0

    const-string v9, "name"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v9, "sms-policy"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "policy":Ljava/lang/String;
    if-nez v4, :cond_2

    .line 470
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Error: missing package name attribute"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 482
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 491
    if-eqz v3, :cond_0

    .line 493
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 494
    :catch_1
    move-exception v7

    goto :goto_1

    .line 471
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "policy":Ljava/lang/String;
    :cond_2
    if-nez v6, :cond_3

    .line 472
    :try_start_6
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Error: missing package policy attribute"

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 484
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 485
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to read premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 491
    if-eqz v3, :cond_0

    .line 493
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 494
    :catch_3
    move-exception v7

    goto :goto_1

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "policy":Ljava/lang/String;
    :cond_3
    :try_start_9
    iget-object v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    .line 475
    :catch_4
    move-exception v1

    .line 476
    .local v1, "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: non-numeric policy type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 486
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v2    # "element":Ljava/lang/String;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "policy":Ljava/lang/String;
    :catch_5
    move-exception v1

    .line 487
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to parse premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 491
    if-eqz v3, :cond_0

    .line 493
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_1

    .line 494
    :catch_6
    move-exception v7

    goto :goto_1

    .line 479
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    :try_start_d
    const-string v7, "SmsUsageMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error: skipping unknown XML tag "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    .line 488
    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_7
    move-exception v1

    .line 489
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_e
    const-string v7, "SmsUsageMonitor"

    const-string v9, "Unable to parse premium SMS policy database"

    invoke-static {v7, v9, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 491
    if-eqz v3, :cond_0

    .line 493
    :try_start_f
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 494
    :catch_8
    move-exception v7

    goto/16 :goto_1

    .line 491
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_5

    .line 493
    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 495
    :cond_5
    :goto_2
    :try_start_11
    throw v7

    .line 499
    .end local v0    # "dir":Ljava/io/File;
    .end local v3    # "infile":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    throw v7

    .line 494
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "element":Ljava/lang/String;
    .restart local v3    # "infile":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_9
    move-exception v7

    goto/16 :goto_1

    .end local v2    # "element":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_a
    move-exception v9

    goto :goto_2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 654
    const-string v0, "SmsUsageMonitor"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void
.end method

.method public static mergeShortCodeCategories(II)I
    .locals 0
    .param p0, "type1"    # I
    .param p1, "type2"    # I

    .prologue
    .line 94
    if-le p0, p1, :cond_0

    .line 95
    .end local p0    # "type1":I
    :goto_0
    return p0

    .restart local p0    # "type1":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private removeExpiredTimestamps()V
    .locals 9

    .prologue
    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget v7, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckPeriod:I

    int-to-long v7, v7

    sub-long v0, v5, v7

    .line 622
    .local v0, "beginCheckPeriod":J
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v6

    .line 623
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 624
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 625
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 626
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 627
    .local v4, "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gez v5, :cond_0

    .line 628
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 631
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    .end local v4    # "oldList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/Long;>;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    return-void
.end method

.method private writePremiumSmsPolicyDb()V
    .locals 9

    .prologue
    .line 507
    iget-object v6, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v6

    .line 508
    const/4 v3, 0x0

    .line 510
    .local v3, "outfile":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 512
    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 513
    .local v2, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 515
    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 517
    const/4 v5, 0x0

    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 519
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 520
    .local v4, "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 521
    const/4 v7, 0x0

    const-string v8, "name"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 522
    const/4 v7, 0x0

    const-string v8, "sms-policy"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 523
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 530
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "policy":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v5, "SmsUsageMonitor"

    const-string v7, "Unable to write premium SMS policy database"

    invoke-static {v5, v7, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 532
    if-eqz v3, :cond_0

    .line 533
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 536
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    return-void

    .line 526
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "premium-sms-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 527
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 529
    iget-object v5, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPolicyFile:Landroid/util/AtomicFile;

    invoke-virtual {v5, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 536
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public check(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "smsWaiting"    # I

    .prologue
    .line 367
    const-string v1, "com.lenovo.ideafriend"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x1

    .line 381
    :goto_0
    return v1

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    monitor-enter v2

    .line 373
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsUsageMonitor;->removeExpiredTimestamps()V

    .line 375
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 376
    .local v0, "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez v0, :cond_1

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .restart local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->isUnderLimit(Ljava/util/ArrayList;I)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 382
    .end local v0    # "sentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkDestination(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 400
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSettingsObserverHandler:Lcom/android/internal/telephony/SmsUsageMonitor$SettingsObserverHandler;

    monitor-enter v1

    .line 402
    :try_start_0
    invoke-static {p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    monitor-exit v1

    .line 434
    :goto_0
    return v0

    .line 407
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCheckEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 409
    monitor-exit v1

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 412
    :cond_1
    if-eqz p2, :cond_3

    .line 413
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFileLastModified:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPatternFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 417
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromFile(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    .line 422
    :goto_1
    iput-object p2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentCountry:Ljava/lang/String;

    .line 426
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    if-eqz v2, :cond_5

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;->getNumberCategory(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 420
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/SmsUsageMonitor;->getPatternMatcherFromResource(Ljava/lang/String;)Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mCurrentPatternMatcher:Lcom/android/internal/telephony/SmsUsageMonitor$ShortCodePatternMatcher;

    goto :goto_1

    .line 430
    :cond_5
    const-string v2, "SmsUsageMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No patterns for \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": using generic short code rule"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_6

    .line 432
    const/4 v0, 0x3

    monitor-exit v1

    goto :goto_0

    .line 434
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method dispose()V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mSmsStamp:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 353
    return-void
.end method

.method public getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 551
    invoke-static {p1}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    .line 552
    iget-object v2, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v2

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 554
    .local v0, "policy":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 555
    const/4 v1, 0x0

    monitor-exit v2

    .line 557
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 559
    .end local v0    # "policy":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I

    .prologue
    .line 572
    invoke-static {}, Lcom/android/internal/telephony/SmsUsageMonitor;->checkCallerIsSystemOrPhoneApp()V

    .line 573
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    .line 575
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SMS permission type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    monitor-enter v1

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsUsageMonitor;->mPremiumSmsPolicy:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SmsUsageMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SmsUsageMonitor$1;-><init>(Lcom/android/internal/telephony/SmsUsageMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 587
    return-void

    .line 579
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
