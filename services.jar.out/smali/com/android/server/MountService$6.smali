.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iput-object p3, p0, Lcom/android/server/MountService$6;->val$path:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 1134
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onEvent: VolumeDiskInserted, start to mount "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/MountService$6;->val$path:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    :try_start_0
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v9}, Lcom/android/server/MountService;->isUsbMassStorageEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1151
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iget-object v10, p0, Lcom/android/server/MountService$6;->val$path:Ljava/lang/String;

    const-string v11, "ums"

    const/4 v12, 0x1

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v9, v10, v11, v12}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1198
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iget-object v10, p0, Lcom/android/server/MountService$6;->val$path:Ljava/lang/String;

    # invokes: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v9, v10}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v5

    .local v5, "rc":I
    if-eqz v5, :cond_2

    .line 1155
    const-string v9, "MountService"

    const-string v10, "Insertion mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_2
    iget-object v9, p0, Lcom/android/server/MountService$6;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$2900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1158
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doSDSwapVolumeUpdate()V
    invoke-static {v9}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;)V

    .line 1159
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->updateDefaultpath()V
    invoke-static {v9}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)V

    .line 1160
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->sendSDSwapIntent()V
    invoke-static {v9}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    .line 1163
    :cond_3
    if-nez v5, :cond_5

    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->enableDefaultPathDialog()Z
    invoke-static {v9}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1166
    new-instance v0, Ljava/io/File;

    const-string v9, "internal_sd_path"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v0, "emmc_file":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v9, "external_sd_path"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1168
    .local v6, "sd_file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    .line 1169
    .local v1, "emmc_space":J
    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v7

    .line 1170
    .local v7, "sd_space":J
    const-string v9, "MountService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "emmc_space="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sd_space="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const-wide/32 v9, 0x40000000

    add-long/2addr v9, v1

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    .line 1172
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.wingtech.storage.StorageDefaultPathDialog"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x10000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1174
    iget-object v9, p0, Lcom/android/server/MountService$6;->val$path:Ljava/lang/String;

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$2900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1175
    const-string v9, "insert_otg"

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1177
    :cond_4
    iget-object v9, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/MountService;->access$3100(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1195
    .end local v0    # "emmc_file":Ljava/io/File;
    .end local v1    # "emmc_space":J
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "rc":I
    .end local v6    # "sd_file":Ljava/io/File;
    .end local v7    # "sd_space":J
    :catch_0
    move-exception v3

    .line 1196
    .local v3, "ex":Ljava/lang/Exception;
    const-string v9, "MountService"

    const-string v10, "Failed to mount media on insertion"

    invoke-static {v9, v10, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1190
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "rc":I
    :cond_5
    :try_start_1
    const-string v9, "MountService"

    const-string v10, "Insertion mount failed (%d)"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
