.class Lcom/android/server/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/WallpaperManagerService;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z
    .locals 10
    .param p1, "doit"    # Z
    .param p2, "wallpaper"    # Lcom/android/server/WallpaperManagerService$WallpaperData;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 412
    const/4 v1, 0x0

    .line 413
    .local v1, "changed":Z
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 414
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 416
    .local v0, "change":I
    if-eq v0, v9, :cond_0

    if-ne v0, v8, :cond_1

    .line 418
    :cond_0
    const/4 v1, 0x1

    .line 419
    if-eqz p1, :cond_1

    .line 420
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper uninstalled, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 426
    .end local v0    # "change":I
    :cond_1
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_3

    .line 427
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    .line 429
    .restart local v0    # "change":I
    if-eq v0, v9, :cond_2

    if-ne v0, v8, :cond_3

    .line 431
    :cond_2
    iput-object v7, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 434
    .end local v0    # "change":I
    :cond_3
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 437
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :cond_4
    :goto_0
    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 448
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 454
    :cond_5
    :goto_1
    return v1

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "WallpaperService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wallpaper component gone, removing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v4, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v3, v6, v4, v7}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    goto :goto_0

    .line 450
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 451
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iput-object v7, p2, Lcom/android/server/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto :goto_1
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 384
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v4, v3, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 385
    const/4 v0, 0x0

    .line 386
    .local v0, "changed":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 387
    const/4 v3, 0x0

    monitor-exit v4

    .line 394
    :goto_0
    return v3

    .line 389
    :cond_0
    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v3, v3, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v5, v5, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 390
    .local v2, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v2, :cond_1

    .line 391
    invoke-virtual {p0, p4, v2}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    move-result v1

    .line 392
    .local v1, "res":Z
    or-int/2addr v0, v1

    .line 394
    .end local v1    # "res":Z
    :cond_1
    monitor-exit v4

    move v3, v0

    goto :goto_0

    .line 395
    .end local v2    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 353
    monitor-exit v2

    .line 364
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 356
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_3

    .line 357
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 359
    :cond_1
    monitor-exit v2

    goto :goto_0

    .line 363
    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 361
    .restart local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1, v0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 363
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v6, v0, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v0, v0, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 330
    monitor-exit v6

    .line 347
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v2, v2, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 333
    .local v4, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v4, :cond_1

    .line 334
    iget-object v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 337
    iget-object v1, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 338
    .local v1, "comp":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/WallpaperManagerService$WallpaperData;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    const-string v0, "WallpaperService"

    const-string v2, "Wallpaper no longer available; reverting to default"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    const/4 v2, 0x0

    iget v3, v4, Lcom/android/server/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/WallpaperManagerService;->clearWallpaperLocked(ZILandroid/os/IRemoteCallback;)V

    .line 346
    .end local v1    # "comp":Landroid/content/ComponentName;
    :cond_1
    monitor-exit v6

    goto :goto_0

    .end local v4    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 368
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 370
    monitor-exit v2

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 373
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    .line 374
    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 376
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    .line 379
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSomePackagesChanged()V
    .locals 4

    .prologue
    .line 400
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v2, v1, Lcom/android/server/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v1, v1, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 402
    monitor-exit v2

    .line 409
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/WallpaperManagerService;

    iget v3, v3, Lcom/android/server/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/WallpaperManagerService$WallpaperData;

    .line 405
    .local v0, "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    if-eqz v0, :cond_1

    .line 406
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(ZLcom/android/server/WallpaperManagerService$WallpaperData;)Z

    .line 408
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "wallpaper":Lcom/android/server/WallpaperManagerService$WallpaperData;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
