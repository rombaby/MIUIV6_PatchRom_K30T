.class Lcom/android/internal/policy/impl/PhoneWindowManager$19$2;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$19;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$19;)V
    .locals 0

    .prologue
    .line 4599
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$19$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 4601
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$19$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    if-eqz v0, :cond_0

    .line 4602
    const-string v0, "WindowManager"

    const-string v1, "com.wingtech.settings.deviceinfo.reboot.request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$19$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$19;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$19;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 4613
    :cond_0
    return-void
.end method
