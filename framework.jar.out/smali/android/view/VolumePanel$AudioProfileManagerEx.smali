.class Landroid/view/VolumePanel$AudioProfileManagerEx;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioProfileManagerEx"
.end annotation


# static fields
.field private static final CLAZZ_NAME:Ljava/lang/String; = "com.wingtech.audioprofile.AudioProfileManager"

.field private static final GENERAL:Ljava/lang/String; = "mtk_audioprofile_general"

.field private static final MEETTING:Ljava/lang/String; = "mtk_audioprofile_meeting"

.field private static final OUTDOOR:Ljava/lang/String; = "mtk_audioprofile_outdoor"

.field private static final SILENT:Ljava/lang/String; = "mtk_audioprofile_silent"


# instance fields
.field protected mAudioProfileManager:Ljava/lang/Object;

.field private mClazz:Ljava/lang/Class;

.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method public constructor <init>(Landroid/view/VolumePanel;)V
    .locals 1

    .prologue
    .line 1265
    iput-object p1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1263
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mAudioProfileManager:Ljava/lang/Object;

    .line 1266
    invoke-direct {p0}, Landroid/view/VolumePanel$AudioProfileManagerEx;->initClass()V

    .line 1267
    return-void
.end method

.method private initClass()V
    .locals 2

    .prologue
    .line 1270
    iget-object v1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mClazz:Ljava/lang/Class;

    if-nez v1, :cond_0

    .line 1272
    :try_start_0
    const-string v1, "com.wingtech.audioprofile.AudioProfileManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1273
    :catch_0
    move-exception v0

    .line 1274
    .local v0, "localException":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mClazz:Ljava/lang/Class;

    goto :goto_0
.end method


# virtual methods
.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramArrayOfClass"    # [Ljava/lang/Class;

    .prologue
    .line 1281
    :try_start_0
    iget-object v2, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mClazz:Ljava/lang/Class;

    invoke-virtual {v2, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1282
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 1284
    :catch_0
    move-exception v0

    .line 1285
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1286
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveProfileKey()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1315
    const-string v1, "getActiveProfileKey"

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel$AudioProfileManagerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1316
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1317
    check-cast v0, Ljava/lang/String;

    .line 1319
    .end local v0    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "paramArrayOfClass"    # [Ljava/lang/Class;
    .param p3, "paramArrayOfObject"    # [Ljava/lang/Object;

    .prologue
    .line 1291
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel$AudioProfileManagerEx;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1293
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    iget-object v3, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mAudioProfileManager:Ljava/lang/Object;

    invoke-virtual {v1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1297
    :goto_0
    return-object v2

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1297
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 1311
    iget-object v0, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mAudioProfileManager:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public listenAudioProfie(Lcom/wingtech/audioprofile/AudioProfileListener;I)V
    .locals 6
    .param p1, "listener"    # Lcom/wingtech/audioprofile/AudioProfileListener;
    .param p2, "event"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1328
    const-string v0, "listenAudioProfie"

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Lcom/wingtech/audioprofile/AudioProfileListener;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel$AudioProfileManagerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    return-void
.end method

.method public setActiveProfile(Ljava/lang/String;)V
    .locals 5
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1324
    const-string/jumbo v0, "setActiveProfile"

    new-array v1, v4, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel$AudioProfileManagerEx;->invokeInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1302
    iget-object v0, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mClazz:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 1303
    invoke-direct {p0}, Landroid/view/VolumePanel$AudioProfileManagerEx;->initClass()V

    .line 1305
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mClazz:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 1306
    iput-object p1, p0, Landroid/view/VolumePanel$AudioProfileManagerEx;->mAudioProfileManager:Ljava/lang/Object;

    .line 1308
    :cond_1
    return-void
.end method
