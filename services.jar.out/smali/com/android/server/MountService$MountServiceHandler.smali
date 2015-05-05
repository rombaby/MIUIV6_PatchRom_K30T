.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field mForceUnmounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$UnmountCallBack;",
            ">;"
        }
    .end annotation
.end field

.field mUpdatingStatus:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 541
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 542
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 546
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 548
    :pswitch_0
    const-string v20, "MountService"

    const-string v21, "H_UNMOUNT_PM_UPDATE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 550
    .local v18, "ucb":Lcom/android/server/MountService$UnmountCallBack;
    const/16 v19, 0x0

    .line 551
    .local v19, "volume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 552
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v20

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object/from16 v19, v0

    .line 553
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    if-nez v19, :cond_1

    .line 555
    const-string v20, "MountService"

    const-string v21, "H_UNMOUNT_PM_UPDATE volume is not exist!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v20

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v20

    .line 558
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    const-string v21, "android.intent.action.MEDIA_EJECT"

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 559
    const-string v20, "MountService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ucb path="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mUnmountSwap:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "/storage/sdcard1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 561
    const/4 v15, 0x0

    .line 562
    .local v15, "swapVolume":Landroid/os/storage/StorageVolume;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    .line 563
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mVolumesByPath:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Ljava/util/HashMap;

    move-result-object v20

    const-string v22, "/storage/sdcard1"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    check-cast v0, Landroid/os/storage/StorageVolume;

    move-object v15, v0

    .line 564
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    const-string v21, "android.intent.action.MEDIA_EJECT"

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    # invokes: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V
    invoke-static {v0, v1, v15, v2}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/StorageVolume;Landroid/os/UserHandle;)V

    .line 567
    .end local v15    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mShutdownCount:I
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)I

    move-result v20

    if-lez v20, :cond_4

    .line 568
    const-wide/16 v20, 0x1f4

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    .line 573
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const-string v20, "MountService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " registered = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    .line 577
    const-string v20, "MountService"

    const-string v21, "Updating external media status on PackageManager"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v17, 0x0

    .line 581
    .local v17, "tosdcard2":Z
    const-string v20, "persist.sys.switch_storage"

    const-string v21, "none,0"

    invoke-static/range {v20 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 582
    .local v16, "switch_storage":Ljava/lang/String;
    const-string v20, ","

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 583
    .local v14, "split":[Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v14, v20

    const-string v21, "emmc"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 584
    const/16 v17, 0x1

    .line 590
    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->EXTERNAL_SD1:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$1300()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_3

    if-eqz v17, :cond_6

    .line 591
    :cond_3
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mPms:Lcom/android/server/pm/PackageManagerService;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    goto/16 :goto_0

    .line 564
    .end local v14    # "split":[Ljava/lang/String;
    .end local v16    # "switch_storage":Ljava/lang/String;
    .end local v17    # "tosdcard2":Z
    .restart local v15    # "swapVolume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v20

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v20

    .line 570
    .end local v15    # "swapVolume":Landroid/os/storage/StorageVolume;
    :cond_4
    const-wide/16 v20, 0x5dc

    invoke-static/range {v20 .. v21}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_1

    .line 586
    .restart local v14    # "split":[Ljava/lang/String;
    .restart local v16    # "switch_storage":Ljava/lang/String;
    .restart local v17    # "tosdcard2":Z
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 593
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mUnmountPrimary:Z
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/MountService;->finishMediaUpdate()V

    goto/16 :goto_0

    .line 602
    .end local v14    # "split":[Ljava/lang/String;
    .end local v16    # "switch_storage":Ljava/lang/String;
    .end local v17    # "tosdcard2":Z
    .end local v18    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .end local v19    # "volume":Landroid/os/storage/StorageVolume;
    :pswitch_1
    const-string v20, "MountService"

    const-string v21, "H_UNMOUNT_PM_DONE"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const-string v20, "MountService"

    const-string v21, "Updated status. Processing requests"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/MountService$MountServiceHandler;->mUpdatingStatus:Z

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 606
    .local v10, "size":I
    new-array v11, v10, [I

    .line 607
    .local v11, "sizeArr":[I
    const/4 v12, 0x0

    .line 609
    .local v12, "sizeArrN":I
    const-string v20, "activity"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService;

    .line 611
    .local v4, "ams":Lcom/android/server/am/ActivityManagerService;
    const/4 v7, 0x0

    .local v7, "i":I
    move v13, v12

    .end local v12    # "sizeArrN":I
    .local v13, "sizeArrN":I
    :goto_3
    if-ge v7, v10, :cond_e

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 613
    .restart local v18    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    .line 614
    .local v8, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 615
    .local v5, "done":Z
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/server/MountService$UnmountCallBack;->force:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 616
    const/4 v5, 0x1

    .line 631
    :cond_7
    :goto_4
    if-nez v5, :cond_c

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 633
    const-string v20, "MountService"

    const-string v21, "Retrying to kill storage users again"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v23, v0

    add-int/lit8 v24, v23, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x1e

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v12, v13

    .line 611
    .end local v13    # "sizeArrN":I
    .restart local v12    # "sizeArrN":I
    :goto_5
    add-int/lit8 v7, v7, 0x1

    move v13, v12

    .end local v12    # "sizeArrN":I
    .restart local v13    # "sizeArrN":I
    goto :goto_3

    .line 618
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v9

    .line 619
    .local v9, "pids":[I
    if-eqz v9, :cond_9

    array-length v0, v9

    move/from16 v20, v0

    if-nez v20, :cond_a

    .line 620
    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    .line 623
    :cond_a
    const-string v20, "unmount media"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v9, v0, v1}, Lcom/android/server/am/ActivityManagerService;->killPids([ILjava/lang/String;Z)Z

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Lcom/android/server/MountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v9

    .line 626
    if-eqz v9, :cond_b

    array-length v0, v9

    move/from16 v20, v0

    if-nez v20, :cond_7

    .line 627
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_4

    .line 639
    .end local v9    # "pids":[I
    :cond_c
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/server/MountService$UnmountCallBack;->retries:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    .line 640
    const-string v20, "MountService"

    const-string v21, "Failed to unmount media inspite of 4 retries. Forcibly killing processes now"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_d
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "sizeArrN":I
    .restart local v12    # "sizeArrN":I
    aput v7, v11, v13

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 649
    .end local v5    # "done":Z
    .end local v8    # "path":Ljava/lang/String;
    .end local v12    # "sizeArrN":I
    .end local v18    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    .restart local v13    # "sizeArrN":I
    :cond_e
    add-int/lit8 v7, v13, -0x1

    :goto_6
    if-ltz v7, :cond_0

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->mForceUnmounts:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    aget v21, v11, v7

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 649
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    .line 655
    .end local v4    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v7    # "i":I
    .end local v10    # "size":I
    .end local v11    # "sizeArr":[I
    .end local v13    # "sizeArrN":I
    :pswitch_2
    const-string v20, "MountService"

    const-string v21, "H_UNMOUNT_MS"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/server/MountService$UnmountCallBack;

    .line 657
    .restart local v18    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/MountService$UnmountCallBack;->handleFinished()V

    goto/16 :goto_0

    .line 662
    .end local v18    # "ucb":Lcom/android/server/MountService$UnmountCallBack;
    :pswitch_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v20 .. v20}, Lcom/android/server/MountService;->access$1700(Lcom/android/server/MountService;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 663
    :catch_0
    move-exception v6

    .line 664
    .local v6, "ex":Ljava/lang/Exception;
    const-string v20, "MountService"

    const-string v21, "Boot-time mount exception"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
