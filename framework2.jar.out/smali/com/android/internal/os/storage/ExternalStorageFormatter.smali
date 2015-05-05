.class public Lcom/android/internal/os/storage/ExternalStorageFormatter;
.super Landroid/app/Service;
.source "ExternalStorageFormatter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName;

.field public static final EXTRA_ALWAYS_RESET:Ljava/lang/String; = "always_reset"

.field public static final FORMAT_AND_FACTORY_RESET:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

.field public static final FORMAT_ONLY:Ljava/lang/String; = "com.android.internal.os.storage.FORMAT_ONLY"

.field static final TAG:Ljava/lang/String; = "ExternalStorageFormatter"


# instance fields
.field private mAlwaysReset:Z

.field private mEmulated:Z

.field private mFactoryReset:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsFormatSuccess:Z

.field private mMountService:Landroid/os/storage/IMountService;

.field private mPath:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mStorageDescription:Ljava/lang/String;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageRemovable:Z

.field private mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 56
    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 58
    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 62
    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 67
    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageRemovable:Z

    .line 69
    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    .line 70
    iput-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 71
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mEmulated:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    .line 75
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$1;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p1, "x1"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mIsFormatSuccess:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    return v0
.end method


# virtual methods
.method fail(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    iget-boolean v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-eqz v0, :cond_0

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 236
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 237
    return-void
.end method

.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 491
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 492
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 493
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 494
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    .line 499
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 496
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageFormatter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 188
    .local v1, "mountService":Landroid/os/storage/IMountService;
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "extStoragePath":Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 228
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 229
    return-void

    .line 188
    .end local v0    # "extStoragePath":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 89
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 90
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 91
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 94
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ExternalStorageFormatter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    new-instance v0, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;

    invoke-direct {v0, p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter$2;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mHandler:Landroid/os/Handler;

    .line 103
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 175
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 176
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 107
    const-string v7, "com.android.internal.os.storage.FORMAT_AND_FACTORY_RESET"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    .line 110
    :cond_0
    const-string v7, "always_reset"

    invoke-virtual {p1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 111
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    .line 114
    :cond_1
    const-string v7, "storage_volume"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    iput-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 121
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 122
    .local v6, "volumes":[Landroid/os/storage/StorageVolume;
    const-string v3, "/storage/sdcard0"

    .line 123
    .local v3, "primaryPath":Ljava/lang/String;
    const-string v4, "/storage/sdcard1"

    .line 124
    .local v4, "secondaryPath":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 125
    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 126
    array-length v7, v6

    if-le v7, v10, :cond_2

    .line 127
    aget-object v7, v6, v10

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 130
    :cond_2
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "primaryPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  secondaryPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mStorageVolume="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    if-nez v7, :cond_8

    invoke-static {}, Landroid/os/Environment;->getSwapState()Z

    move-result v7

    if-nez v7, :cond_7

    .end local v3    # "primaryPath":Ljava/lang/String;
    :goto_0
    iput-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 135
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPath="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    if-eqz v6, :cond_4

    .line 138
    move-object v0, v6

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v5, v0, v1

    .line 139
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 140
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 141
    const-string v7, "ExternalStorageFormatter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPath:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is emulated, do not format!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-boolean v10, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mEmulated:Z

    .line 144
    :cond_3
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageRemovable:Z

    .line 145
    invoke-virtual {v5, p0}, Landroid/os/storage/StorageVolume;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageDescription:Ljava/lang/String;

    .line 151
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_4
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v7, :cond_6

    .line 152
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-direct {v7, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 153
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 154
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 155
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x7d3

    invoke-virtual {v7, v8}, Landroid/view/Window;->setType(I)V

    .line 156
    iget-boolean v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z

    if-nez v7, :cond_5

    .line 157
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 159
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V

    .line 160
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 163
    :cond_6
    const/4 v7, 0x3

    return v7

    .restart local v3    # "primaryPath":Ljava/lang/String;
    :cond_7
    move-object v3, v4

    .line 132
    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 138
    .end local v3    # "primaryPath":Ljava/lang/String;
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public updateProgressDialog(I)V
    .locals 2
    .param p1, "msg"    # I

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 481
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 483
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 484
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 488
    return-void
.end method

.method updateProgressState()V
    .locals 7

    .prologue
    .line 243
    iget-boolean v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mEmulated:Z

    if-eqz v4, :cond_1

    .line 244
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 476
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "status":Ljava/lang/String;
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProgressState path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const-string v4, "mounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 252
    :cond_2
    const v4, 0x10404e0

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 253
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 254
    .local v2, "mountService":Landroid/os/storage/IMountService;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 258
    .local v1, "extStoragePath":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z

    invoke-interface {v2, v1, v4, v5}, Landroid/os/storage/IMountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Failed talking with mount service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_3
    const-string v4, "nofs"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "unmounted"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "unmountable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 266
    :cond_4
    const v4, 0x10404e2

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressDialog(I)V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 268
    .restart local v2    # "mountService":Landroid/os/storage/IMountService;
    iget-object v1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter;->mPath:Ljava/lang/String;

    .line 269
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 270
    new-instance v4, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/internal/os/storage/ExternalStorageFormatter$4;-><init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 315
    :cond_5
    const-string v4, "ExternalStorageFormatter"

    const-string v5, "Unable to locate IMountService"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    .end local v1    # "extStoragePath":Ljava/lang/String;
    .end local v2    # "mountService":Landroid/os/storage/IMountService;
    :cond_6
    const-string v4, "bad_removal"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 318
    const v4, 0x10404e4

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 319
    :cond_7
    const-string v4, "checking"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 320
    const v4, 0x10404e5

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 321
    :cond_8
    const-string v4, "removed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 322
    const v4, 0x10404e6

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 323
    :cond_9
    const-string v4, "shared"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 324
    const v4, 0x10404e7

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    goto/16 :goto_0

    .line 325
    :cond_a
    const-string v4, "unmounting"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 327
    const v4, 0x10404e8

    invoke-virtual {p0, v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->fail(I)V

    .line 328
    const-string v4, "ExternalStorageFormatter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown storage state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto/16 :goto_0
.end method
