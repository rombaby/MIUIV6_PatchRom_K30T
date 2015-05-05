.class public Lcom/wingtech/audioprofile/DefaultProfileStatesGetter;
.super Ljava/lang/Object;
.source "DefaultProfileStatesGetter.java"

# interfaces
.implements Lcom/wingtech/audioprofile/IAudioProfileExtension$IDefaultProfileStatesGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultProfileStates()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<AudioProfileState:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "TAudioProfileState;>;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method
