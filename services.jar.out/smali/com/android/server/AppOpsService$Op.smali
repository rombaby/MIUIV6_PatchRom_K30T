.class public final Lcom/android/server/AppOpsService$Op;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Op"
.end annotation


# instance fields
.field public dialogResult:Lcom/android/server/PermissionDialogResult;

.field public duration:I

.field final mClientTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field public nesting:I

.field public noteOpCount:I

.field public final op:I

.field public final packageName:Ljava/lang/String;

.field public rejectTime:J

.field public startOpCount:I

.field public time:J

.field public final uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 1
    .param p1, "_uid"    # I
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_op"    # I
    .param p4, "_mode"    # I

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/android/server/AppOpsService$Op;->uid:I

    .line 132
    iput-object p2, p0, Lcom/android/server/AppOpsService$Op;->packageName:Ljava/lang/String;

    .line 133
    iput p3, p0, Lcom/android/server/AppOpsService$Op;->op:I

    .line 134
    iput p4, p0, Lcom/android/server/AppOpsService$Op;->mode:I

    .line 135
    new-instance v0, Lcom/android/server/PermissionDialogResult;

    invoke-direct {v0}, Lcom/android/server/PermissionDialogResult;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->dialogResult:Lcom/android/server/PermissionDialogResult;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AppOpsService$Op;->mClientTokens:Ljava/util/ArrayList;

    .line 137
    return-void
.end method
