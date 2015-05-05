.class Lcom/android/internal/policy/impl/PhoneWindowManager$1;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 530
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 560
    :goto_0
    return-void

    .line 532
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerKeyTriggered:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    const-string v0, "wwww"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wwww---lastSeconds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300(Lcom/android/internal/policy/impl/PhoneWindowManager;)I

    move-result v1

    # invokes: Lcom/android/internal/policy/impl/PhoneWindowManager;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # -= operator for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$320(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 538
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 539
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->timeHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->aDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->aDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 543
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->aDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 550
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->aDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 551
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->aDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 552
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->aDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$502(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 554
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->lastSeconds:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$302(Lcom/android/internal/policy/impl/PhoneWindowManager;I)I

    .line 555
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->timeHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 557
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->timeHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 530
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
