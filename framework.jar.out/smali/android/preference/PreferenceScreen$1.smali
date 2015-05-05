.class Landroid/preference/PreferenceScreen$1;
.super Landroid/app/Dialog;
.source "PreferenceScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceScreen;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 178
    iput-object p1, p0, Landroid/preference/PreferenceScreen$1;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 182
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 183
    .local v0, "id":I
    if-nez p1, :cond_0

    const v1, 0x102002c

    if-ne v1, v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/app/Dialog;->onBackPressed()V

    .line 185
    const/4 v1, 0x1

    .line 187
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p2}, Landroid/app/Dialog;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
