.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 164
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 166
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 169
    :cond_0
    const-string v5, "layout_inflater"

    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 171
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x109007e

    invoke-virtual {v3, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 173
    .local v0, "childPrefScreen":Landroid/view/View;
    const v5, 0x102000a

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 174
    iget-object v5, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 177
    invoke-virtual {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 178
    .local v4, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/preference/PreferenceScreen$1;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-direct {v2, p0, v1, v5}, Landroid/preference/PreferenceScreen$1;-><init>(Landroid/preference/PreferenceScreen;Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 193
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/Window;->requestFeature(I)Z

    .line 198
    :goto_0
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 199
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 207
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 209
    invoke-virtual {v2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 210
    invoke-virtual {v2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 213
    :cond_2
    return-void

    .line 196
    :cond_3
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 148
    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 149
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->onAttachedToActivity()V

    .line 152
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 217
    invoke-virtual {p0}, Landroid/preference/Preference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 218
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 231
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 232
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 235
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    if-nez v2, :cond_1

    .line 239
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 237
    check-cast v1, Landroid/preference/Preference;

    .line 238
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 262
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 264
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 273
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 268
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 269
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 270
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 271
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 249
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 250
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 257
    :goto_0
    return-object v1

    .line 254
    :cond_1
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 255
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 256
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method
