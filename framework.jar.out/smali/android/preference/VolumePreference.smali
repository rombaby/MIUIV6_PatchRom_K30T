.class public Landroid/preference/VolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "VolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/VolumePreference$SeekBarVolumizer;,
        Landroid/preference/VolumePreference$SavedState;,
        Landroid/preference/VolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePreference"

.field private static orientationChanged:Z

.field private static sOriginalStreamVolume:I

.field private static sOriginalStreamVolumeInternal:I


# instance fields
.field private mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Landroid/preference/VolumePreference;->orientationChanged:Z

    .line 56
    sput v1, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    .line 57
    sput v1, Landroid/preference/VolumePreference;->sOriginalStreamVolumeInternal:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    sget-object v1, Lcom/android/internal/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 66
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void
.end method

.method static synthetic access$402(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 44
    sput p0, Landroid/preference/VolumePreference;->sOriginalStreamVolumeInternal:I

    return p0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 44
    sget v0, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    return v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 154
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 156
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 157
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 158
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10202fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 161
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 163
    :cond_0
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 165
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stop()V

    .line 166
    iput-object v4, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 169
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    # invokes: Landroid/preference/VolumePreference$SeekBarVolumizer;->postStopSample()V
    invoke-static {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->access$000(Landroid/preference/VolumePreference$SeekBarVolumizer;)V

    .line 148
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 77
    const v1, 0x10202fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 78
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/VolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    .line 80
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 87
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v2, -0x1

    .line 117
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 119
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 121
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_1

    .line 124
    sget v0, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    if-ne v0, v2, :cond_3

    sget-boolean v0, Landroid/preference/VolumePreference;->orientationChanged:Z

    if-nez v0, :cond_3

    .line 125
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 131
    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/preference/VolumePreference;->orientationChanged:Z

    .line 136
    :cond_1
    if-eqz p1, :cond_2

    sget v0, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    if-eq v0, v2, :cond_2

    .line 137
    sput v2, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    .line 141
    :cond_2
    invoke-direct {p0}, Landroid/preference/VolumePreference;->cleanup()V

    .line 142
    return-void

    .line 127
    :cond_3
    sget v0, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    if-eq v0, v2, :cond_0

    sget-boolean v0, Landroid/preference/VolumePreference;->orientationChanged:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SeekBarVolumizer;->resetVolume()V

    .line 129
    sput v2, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 91
    iget-object v3, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v1

    .line 92
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 93
    .local v0, "isdown":Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 110
    goto :goto_0

    .end local v0    # "isdown":Z
    :cond_2
    move v0, v2

    .line 92
    goto :goto_1

    .line 95
    .restart local v0    # "isdown":Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 96
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 100
    :sswitch_1
    if-eqz v0, :cond_0

    .line 101
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 105
    :sswitch_2
    if-eqz v0, :cond_0

    .line 106
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 203
    const/4 v1, 0x1

    sput-boolean v1, Landroid/preference/VolumePreference;->orientationChanged:Z

    .line 205
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/VolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 207
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 216
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 211
    check-cast v0, Landroid/preference/VolumePreference$SavedState;

    .line 212
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 213
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/VolumePreference$SeekBarVolumizer;)V
    .locals 4
    .param p1, "volumizer"    # Landroid/preference/VolumePreference$SeekBarVolumizer;

    .prologue
    const/4 v3, 0x2

    .line 173
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 174
    .local v0, "audiomanager":Landroid/media/AudioManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 176
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eq p1, v1, :cond_0

    .line 177
    iget-object v1, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/VolumePreference$SeekBarVolumizer;->stopSample()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 184
    const/4 v2, 0x0

    sput-boolean v2, Landroid/preference/VolumePreference;->orientationChanged:Z

    .line 185
    sget v2, Landroid/preference/VolumePreference;->sOriginalStreamVolumeInternal:I

    sput v2, Landroid/preference/VolumePreference;->sOriginalStreamVolume:I

    .line 187
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 188
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/VolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 193
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/VolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/VolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 194
    .local v0, "myState":Landroid/preference/VolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 195
    iget-object v2, p0, Landroid/preference/VolumePreference;->mSeekBarVolumizer:Landroid/preference/VolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/VolumePreference$SavedState;->getVolumeStore()Landroid/preference/VolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/VolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 197
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/preference/VolumePreference;->mStreamType:I

    .line 71
    return-void
.end method
