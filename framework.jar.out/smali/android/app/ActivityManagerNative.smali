.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2072
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 115
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 64
    if-nez p0, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 73
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 69
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 13
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 100
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v2, p0

    move v12, p2

    invoke-interface/range {v0 .. v12}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 87
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 90
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2069
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 219
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 121
    sparse-switch p1, :sswitch_data_0

    .line 2065
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 125
    :sswitch_0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v176

    .line 127
    .local v176, "pkgs":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IAppStateListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAppStateListener;

    move-result-object v165

    .line 129
    .local v165, "observer":Landroid/app/IAppStateListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v165

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerAppStateListener([Ljava/lang/String;Landroid/app/IAppStateListener;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v5, 0x1

    goto :goto_0

    .line 137
    .end local v165    # "observer":Landroid/app/IAppStateListener;
    .end local v176    # "pkgs":[Ljava/lang/String;
    :sswitch_1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 139
    .local v120, "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 140
    .local v6, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 142
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 143
    .local v9, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 144
    .local v10, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 146
    .local v12, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 147
    .local v13, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 148
    .local v14, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    .line 150
    .local v15, "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v5, p0

    .line 152
    invoke-virtual/range {v5 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I

    move-result v192

    .line 155
    .local v192, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 148
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v192    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 150
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 162
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 164
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 165
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 166
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 167
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 168
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 169
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 170
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 171
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 172
    .restart local v13    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 173
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v15, v5

    .line 175
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 177
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v5, p0

    .line 178
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I

    move-result v192

    .line 181
    .restart local v192    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    move-object/from16 v0, p3

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 173
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v192    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 175
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 188
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 190
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 191
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 192
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 193
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 194
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 195
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 196
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 197
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 198
    .restart local v13    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 199
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object v15, v5

    .line 201
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 203
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v5, p0

    .line 204
    invoke-virtual/range {v5 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v192

    .line 207
    .local v192, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v5, 0x0

    move-object/from16 v0, v192

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 209
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 199
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v192    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 201
    .restart local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 214
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v15    # "profileFd":Landroid/os/ParcelFileDescriptor;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 216
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 217
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 218
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 219
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 220
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 221
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 222
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 223
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 224
    .restart local v13    # "startFlags":I
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 225
    .local v27, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 227
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, v11

    move/from16 v25, v12

    move/from16 v26, v13

    move-object/from16 v28, v16

    move/from16 v29, v17

    .line 228
    invoke-virtual/range {v18 .. v29}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v192

    .line 230
    .local v192, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    move-object/from16 v0, p3

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 225
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v192    # "result":I
    :cond_6
    const/16 v16, 0x0

    goto :goto_7

    .line 237
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v13    # "startFlags":I
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 239
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 240
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/IntentSender;

    .line 241
    .local v8, "intent":Landroid/content/IntentSender;
    const/16 v31, 0x0

    .line 242
    .local v31, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 243
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v31

    .end local v31    # "fillInIntent":Landroid/content/Intent;
    check-cast v31, Landroid/content/Intent;

    .line 245
    .restart local v31    # "fillInIntent":Landroid/content/Intent;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 246
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 247
    .restart local v10    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 248
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 249
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v36

    .line 250
    .local v36, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 251
    .local v37, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_8
    move-object/from16 v28, p0

    move-object/from16 v29, v6

    move-object/from16 v30, v8

    move-object/from16 v32, v9

    move-object/from16 v33, v10

    move-object/from16 v34, v11

    move/from16 v35, v12

    move-object/from16 v38, v16

    .line 253
    invoke-virtual/range {v28 .. v38}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v192

    .line 256
    .restart local v192    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    move-object/from16 v0, p3

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 251
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v192    # "result":I
    :cond_8
    const/16 v16, 0x0

    goto :goto_8

    .line 263
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/IntentSender;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v31    # "fillInIntent":Landroid/content/Intent;
    .end local v36    # "flagsMask":I
    .end local v37    # "flagsValues":I
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v125

    .line 265
    .local v125, "callingActivity":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 266
    .local v8, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 268
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v125

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v192

    .line 269
    .local v192, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v192, :cond_a

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 266
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v192    # "result":Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_9

    .line 270
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v192    # "result":Z
    :cond_a
    const/4 v5, 0x0

    goto :goto_a

    .line 275
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v125    # "callingActivity":Landroid/os/IBinder;
    .end local v192    # "result":Z
    :sswitch_7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 277
    .local v52, "token":Landroid/os/IBinder;
    const/16 v44, 0x0

    .line 278
    .local v44, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 279
    .local v43, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 280
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "resultData":Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 282
    .restart local v44    # "resultData":Landroid/content/Intent;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v43

    move-object/from16 v3, v44

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z

    move-result v190

    .line 283
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    if-eqz v190, :cond_c

    const/4 v5, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 284
    :cond_c
    const/4 v5, 0x0

    goto :goto_b

    .line 289
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":Z
    :sswitch_8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 291
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 292
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 293
    .restart local v12    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1, v11, v12}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 299
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 301
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v190

    .line 302
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v190, :cond_d

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 303
    :cond_d
    const/4 v5, 0x0

    goto :goto_c

    .line 308
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":Z
    :sswitch_a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 310
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v190

    .line 311
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v190, :cond_e

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 312
    :cond_e
    const/4 v5, 0x0

    goto :goto_d

    .line 318
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":Z
    :sswitch_b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 320
    .restart local v120    # "b":Landroid/os/IBinder;
    if-eqz v120, :cond_f

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 322
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 323
    .local v20, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 324
    if-eqz v120, :cond_10

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 326
    .local v21, "rec":Landroid/content/IIntentReceiver;
    :goto_f
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/IntentFilter;

    .line 327
    .local v22, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 328
    .local v23, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v6

    move/from16 v24, v17

    .line 329
    invoke-virtual/range {v18 .. v24}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    .line 330
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    if-eqz v8, :cond_11

    .line 332
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 337
    :goto_10
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 320
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    :cond_f
    const/4 v6, 0x0

    goto :goto_e

    .line 324
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v20    # "packageName":Ljava/lang/String;
    :cond_10
    const/16 v21, 0x0

    goto :goto_f

    .line 335
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    .restart local v22    # "filter":Landroid/content/IntentFilter;
    .restart local v23    # "perm":Ljava/lang/String;
    :cond_11
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_10

    .line 342
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v22    # "filter":Landroid/content/IntentFilter;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 344
    .restart local v120    # "b":Landroid/os/IBinder;
    if-nez v120, :cond_12

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 347
    :cond_12
    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v21

    .line 348
    .restart local v21    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 355
    .end local v21    # "rec":Landroid/content/IIntentReceiver;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 357
    .restart local v120    # "b":Landroid/os/IBinder;
    if-eqz v120, :cond_13

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 359
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 360
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 361
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 362
    if-eqz v120, :cond_14

    invoke-static/range {v120 .. v120}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 364
    .local v10, "resultTo":Landroid/content/IIntentReceiver;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 365
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 366
    .local v44, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 367
    .local v45, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 368
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v47

    .line 369
    .local v47, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v48, 0x1

    .line 370
    .local v48, "serialized":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v49, 0x1

    .line 371
    .local v49, "sticky":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v38, p0

    move-object/from16 v39, v6

    move-object/from16 v40, v8

    move-object/from16 v41, v9

    move-object/from16 v42, v10

    move-object/from16 v46, v23

    move/from16 v50, v17

    .line 372
    invoke-virtual/range {v38 .. v50}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I

    move-result v190

    .line 375
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 357
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v17    # "userId":I
    .end local v23    # "perm":Ljava/lang/String;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v47    # "appOp":I
    .end local v48    # "serialized":Z
    .end local v49    # "sticky":Z
    .end local v190    # "res":I
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 362
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    .restart local v8    # "intent":Landroid/content/Intent;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :cond_14
    const/4 v10, 0x0

    goto :goto_12

    .line 369
    .restart local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v23    # "perm":Ljava/lang/String;
    .restart local v43    # "resultCode":I
    .restart local v44    # "resultData":Ljava/lang/String;
    .restart local v45    # "resultExtras":Landroid/os/Bundle;
    .restart local v47    # "appOp":I
    :cond_15
    const/16 v48, 0x0

    goto :goto_13

    .line 370
    .restart local v48    # "serialized":Z
    :cond_16
    const/16 v49, 0x0

    goto :goto_14

    .line 382
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v23    # "perm":Ljava/lang/String;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    .end local v47    # "appOp":I
    .end local v48    # "serialized":Z
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 384
    .restart local v120    # "b":Landroid/os/IBinder;
    if-eqz v120, :cond_17

    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 385
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    :goto_15
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 386
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 387
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v6, v8, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 384
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_17
    const/4 v6, 0x0

    goto :goto_15

    .line 393
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 395
    .local v42, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 396
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v44

    .line 397
    .restart local v44    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v45

    .line 398
    .restart local v45    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v46, 0x1

    .line 399
    .local v46, "resultAbort":Z
    :goto_16
    if-eqz v42, :cond_18

    move-object/from16 v41, p0

    .line 400
    invoke-virtual/range {v41 .. v46}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 402
    :cond_18
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 398
    .end local v46    # "resultAbort":Z
    :cond_19
    const/16 v46, 0x0

    goto :goto_16

    .line 407
    .end local v42    # "who":Landroid/os/IBinder;
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Ljava/lang/String;
    .end local v45    # "resultExtras":Landroid/os/Bundle;
    :sswitch_10
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 410
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_1a

    .line 411
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 413
    :cond_1a
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 418
    .end local v6    # "app":Landroid/app/IApplicationThread;
    :sswitch_11
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 420
    .restart local v52    # "token":Landroid/os/IBinder;
    const/16 v27, 0x0

    .line 421
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 422
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "config":Landroid/content/res/Configuration;
    check-cast v27, Landroid/content/res/Configuration;

    .line 424
    .restart local v27    # "config":Landroid/content/res/Configuration;
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    const/16 v201, 0x1

    .line 425
    .local v201, "stopProfiling":Z
    :goto_17
    if-eqz v52, :cond_1c

    .line 426
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v27

    move/from16 v3, v201

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 428
    :cond_1c
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 424
    .end local v201    # "stopProfiling":Z
    :cond_1d
    const/16 v201, 0x0

    goto :goto_17

    .line 433
    .end local v27    # "config":Landroid/content/res/Configuration;
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_12
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 435
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 441
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_13
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 443
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 449
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_14
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 451
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v156

    .line 452
    .local v156, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v208, v5

    .line 454
    .local v208, "thumbnail":Landroid/graphics/Bitmap;
    :goto_18
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Ljava/lang/CharSequence;

    .line 455
    .local v132, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v156

    move-object/from16 v3, v208

    move-object/from16 v4, v132

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 452
    .end local v132    # "description":Ljava/lang/CharSequence;
    .end local v208    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_1e
    const/16 v208, 0x0

    goto :goto_18

    .line 461
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v156    # "map":Landroid/os/Bundle;
    :sswitch_15
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 463
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 464
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 469
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_16
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 471
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 477
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_17
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 479
    .restart local v52    # "token":Landroid/os/IBinder;
    if-eqz v52, :cond_1f

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v190

    .line 480
    .local v190, "res":Ljava/lang/String;
    :goto_19
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 482
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 479
    .end local v190    # "res":Ljava/lang/String;
    :cond_1f
    const/16 v190, 0x0

    goto :goto_19

    .line 486
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_18
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 488
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 489
    .local v128, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 491
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 495
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v128    # "cn":Landroid/content/ComponentName;
    :sswitch_19
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v158

    .line 497
    .local v158, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 498
    .local v62, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v185

    .line 499
    .local v185, "receiverBinder":Landroid/os/IBinder;
    if-eqz v185, :cond_20

    invoke-static/range {v185 .. v185}, Landroid/app/IThumbnailReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IThumbnailReceiver;

    move-result-object v184

    .line 502
    .local v184, "receiver":Landroid/app/IThumbnailReceiver;
    :goto_1a
    move-object/from16 v0, p0

    move/from16 v1, v158

    move/from16 v2, v62

    move-object/from16 v3, v184

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v153

    .line 503
    .local v153, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v153, :cond_21

    invoke-interface/range {v153 .. v153}, Ljava/util/List;->size()I

    move-result v111

    .line 505
    .local v111, "N":I
    :goto_1b
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    const/16 v139, 0x0

    .local v139, "i":I
    :goto_1c
    move/from16 v0, v139

    move/from16 v1, v111

    if-ge v0, v1, :cond_22

    .line 508
    move-object/from16 v0, v153

    move/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 509
    .local v143, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 507
    add-int/lit8 v139, v139, 0x1

    goto :goto_1c

    .line 499
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v143    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v153    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v184    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_20
    const/16 v184, 0x0

    goto :goto_1a

    .line 504
    .restart local v153    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v184    # "receiver":Landroid/app/IThumbnailReceiver;
    :cond_21
    const/16 v111, -0x1

    goto :goto_1b

    .line 511
    .restart local v111    # "N":I
    .restart local v139    # "i":I
    :cond_22
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 515
    .end local v62    # "fl":I
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v153    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v158    # "maxNum":I
    .end local v184    # "receiver":Landroid/app/IThumbnailReceiver;
    .end local v185    # "receiverBinder":Landroid/os/IBinder;
    :sswitch_1a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v158

    .line 517
    .restart local v158    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 518
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 519
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v158

    move/from16 v2, v62

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v150

    .line 521
    .local v150, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    move-object/from16 v0, p3

    move-object/from16 v1, v150

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 523
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 527
    .end local v17    # "userId":I
    .end local v62    # "fl":I
    .end local v150    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v158    # "maxNum":I
    :sswitch_1b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 529
    .local v53, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;

    move-result-object v123

    .line 530
    .local v123, "bm":Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    if-eqz v123, :cond_23

    .line 532
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$TaskThumbnails;->writeToParcel(Landroid/os/Parcel;I)V

    .line 537
    :goto_1d
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 535
    :cond_23
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    .line 541
    .end local v53    # "id":I
    .end local v123    # "bm":Landroid/app/ActivityManager$TaskThumbnails;
    :sswitch_1c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 543
    .restart local v53    # "id":I
    move-object/from16 v0, p0

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskTopThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v123

    .line 544
    .local v123, "bm":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v123, :cond_24

    .line 546
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    const/4 v5, 0x0

    move-object/from16 v0, v123

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 551
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 549
    :cond_24
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 555
    .end local v53    # "id":I
    .end local v123    # "bm":Landroid/graphics/Bitmap;
    :sswitch_1d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v158

    .line 557
    .restart local v158    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 558
    .restart local v62    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v158

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v152

    .line 559
    .local v152, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    if-eqz v152, :cond_25

    invoke-interface/range {v152 .. v152}, Ljava/util/List;->size()I

    move-result v111

    .line 561
    .restart local v111    # "N":I
    :goto_1f
    move-object/from16 v0, p3

    move/from16 v1, v111

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    const/16 v139, 0x0

    .restart local v139    # "i":I
    :goto_20
    move/from16 v0, v139

    move/from16 v1, v111

    if-ge v0, v1, :cond_26

    .line 564
    move-object/from16 v0, v152

    move/from16 v1, v139

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 565
    .local v143, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 563
    add-int/lit8 v139, v139, 0x1

    goto :goto_20

    .line 560
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v143    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_25
    const/16 v111, -0x1

    goto :goto_1f

    .line 567
    .restart local v111    # "N":I
    .restart local v139    # "i":I
    :cond_26
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 571
    .end local v62    # "fl":I
    .end local v111    # "N":I
    .end local v139    # "i":I
    .end local v152    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v158    # "maxNum":I
    :sswitch_1e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v149

    .line 573
    .local v149, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    move-object/from16 v0, p3

    move-object/from16 v1, v149

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 575
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 579
    .end local v149    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :sswitch_1f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v151

    .line 581
    .local v151, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    move-object/from16 v0, p3

    move-object/from16 v1, v151

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 583
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 587
    .end local v151    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :sswitch_20
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v155

    .line 589
    .local v155, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    move-object/from16 v0, p3

    move-object/from16 v1, v155

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 591
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 595
    .end local v155    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_21
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 597
    .local v206, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 598
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 600
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v206

    move/from16 v2, v62

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 598
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_27
    const/16 v16, 0x0

    goto :goto_21

    .line 606
    .end local v62    # "fl":I
    .end local v206    # "task":I
    :sswitch_22
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 608
    .restart local v206    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v206

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskToBack(I)V

    .line 609
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 614
    .end local v206    # "task":I
    :sswitch_23
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 616
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_28

    const/16 v164, 0x1

    .line 617
    .local v164, "nonRoot":Z
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v164

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v190

    .line 618
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    if-eqz v190, :cond_29

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 616
    .end local v164    # "nonRoot":Z
    .end local v190    # "res":Z
    :cond_28
    const/16 v164, 0x0

    goto :goto_22

    .line 619
    .restart local v164    # "nonRoot":Z
    .restart local v190    # "res":Z
    :cond_29
    const/4 v5, 0x0

    goto :goto_23

    .line 624
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v164    # "nonRoot":Z
    .end local v190    # "res":Z
    :sswitch_24
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 626
    .restart local v206    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v206

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 632
    .end local v206    # "task":I
    :sswitch_25
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 634
    .local v207, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v186

    .line 635
    .local v186, "relativeStackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 636
    .local v178, "position":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v217

    .line 637
    .local v217, "weight":F
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v186

    move/from16 v3, v178

    move/from16 v4, v217

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->createStack(IIIF)I

    move-result v190

    .line 638
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 644
    .end local v178    # "position":I
    .end local v186    # "relativeStackId":I
    .end local v190    # "res":I
    .end local v207    # "taskId":I
    .end local v217    # "weight":F
    :sswitch_26
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 646
    .restart local v207    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 647
    .local v199, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v209, 0x1

    .line 648
    .local v209, "toTop":Z
    :goto_24
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v199

    move/from16 v3, v209

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 649
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 647
    .end local v209    # "toTop":Z
    :cond_2a
    const/16 v209, 0x0

    goto :goto_24

    .line 654
    .end local v199    # "stackId":I
    .end local v207    # "taskId":I
    :sswitch_27
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 656
    .local v198, "stackBoxId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v217

    .line 657
    .restart local v217    # "weight":F
    move-object/from16 v0, p0

    move/from16 v1, v198

    move/from16 v2, v217

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStackBox(IF)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 663
    .end local v198    # "stackBoxId":I
    .end local v217    # "weight":F
    :sswitch_28
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getStackBoxes()Ljava/util/List;

    move-result-object v154

    .line 665
    .local v154, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    move-object/from16 v0, p3

    move-object/from16 v1, v154

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 667
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 671
    .end local v154    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackBoxInfo;>;"
    :sswitch_29
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v198

    .line 673
    .restart local v198    # "stackBoxId":I
    move-object/from16 v0, p0

    move/from16 v1, v198

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;

    move-result-object v143

    .line 674
    .local v143, "info":Landroid/app/ActivityManager$StackBoxInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    if-eqz v143, :cond_2b

    .line 676
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 677
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$StackBoxInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 681
    :goto_25
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 679
    :cond_2b
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 685
    .end local v143    # "info":Landroid/app/ActivityManager$StackBoxInfo;
    .end local v198    # "stackBoxId":I
    :sswitch_2a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 687
    .restart local v199    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v199

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 693
    .end local v199    # "stackId":I
    :sswitch_2b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 695
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    const/16 v166, 0x1

    .line 696
    .local v166, "onlyRoot":Z
    :goto_26
    if-eqz v52, :cond_2d

    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v166

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v190

    .line 698
    .restart local v190    # "res":I
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 700
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 695
    .end local v166    # "onlyRoot":Z
    .end local v190    # "res":I
    :cond_2c
    const/16 v166, 0x0

    goto :goto_26

    .line 696
    .restart local v166    # "onlyRoot":Z
    :cond_2d
    const/16 v190, -0x1

    goto :goto_27

    .line 704
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v166    # "onlyRoot":Z
    :sswitch_2c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 706
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2e

    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    move-object/from16 v208, v5

    .line 708
    .restart local v208    # "thumbnail":Landroid/graphics/Bitmap;
    :goto_28
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v132

    check-cast v132, Ljava/lang/CharSequence;

    .line 709
    .restart local v132    # "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v208

    move-object/from16 v3, v132

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 706
    .end local v132    # "description":Ljava/lang/CharSequence;
    .end local v208    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2e
    const/16 v208, 0x0

    goto :goto_28

    .line 715
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_2d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 717
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 718
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 719
    .local v84, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 720
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v197, 0x1

    .line 721
    .local v197, "stable":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move/from16 v3, v197

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v131

    .line 722
    .local v131, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    if-eqz v131, :cond_30

    .line 724
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 725
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 729
    :goto_2a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 720
    .end local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v197    # "stable":Z
    :cond_2f
    const/16 v197, 0x0

    goto :goto_29

    .line 727
    .restart local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v197    # "stable":Z
    :cond_30
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    .line 733
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v84    # "name":Ljava/lang/String;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v197    # "stable":Z
    :sswitch_2e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 735
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 736
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 737
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move/from16 v2, v17

    move-object/from16 v3, v52

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v131

    .line 738
    .restart local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    if-eqz v131, :cond_31

    .line 740
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v5, 0x0

    move-object/from16 v0, v131

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    :goto_2b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 743
    :cond_31
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 749
    .end local v17    # "userId":I
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    .end local v131    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :sswitch_2f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 751
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 752
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v180

    .line 754
    .local v180, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v180

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 755
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 760
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v180    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :sswitch_30
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 761
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 762
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v197

    .line 763
    .local v197, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 764
    .local v211, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v197

    move/from16 v3, v211

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v190

    .line 765
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    if-eqz v190, :cond_32

    const/4 v5, 0x1

    :goto_2c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 766
    :cond_32
    const/4 v5, 0x0

    goto :goto_2c

    .line 771
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v190    # "res":Z
    .end local v197    # "stable":I
    .end local v211    # "unstable":I
    :sswitch_31
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 773
    .restart local v120    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 774
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 779
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_32
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 781
    .restart local v120    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 783
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 787
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_33
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 789
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    const/16 v197, 0x1

    .line 790
    .local v197, "stable":Z
    :goto_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v120

    move/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 789
    .end local v197    # "stable":Z
    :cond_33
    const/16 v197, 0x0

    goto :goto_2d

    .line 796
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_34
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 798
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 799
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 805
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    :sswitch_35
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v129

    check-cast v129, Landroid/content/ComponentName;

    .line 807
    .local v129, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v171

    .line 808
    .local v171, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    move-object/from16 v0, v171

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 810
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 814
    .end local v129    # "comp":Landroid/content/ComponentName;
    .end local v171    # "pi":Landroid/app/PendingIntent;
    :sswitch_36
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 816
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 817
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 818
    .local v59, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 819
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 820
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v128

    .line 821
    .restart local v128    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 823
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 827
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v59    # "service":Landroid/content/Intent;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v128    # "cn":Landroid/content/ComponentName;
    :sswitch_37
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 829
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 830
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 831
    .restart local v59    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 832
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 833
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v17

    invoke-virtual {v0, v6, v1, v9, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v190

    .line 834
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 836
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 840
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v59    # "service":Landroid/content/Intent;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v190    # "res":I
    :sswitch_38
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 842
    .local v51, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 843
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 844
    .local v200, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    move/from16 v3, v200

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v190

    .line 845
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    if-eqz v190, :cond_34

    const/4 v5, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 846
    :cond_34
    const/4 v5, 0x0

    goto :goto_2e

    .line 851
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":Z
    .end local v200    # "startId":I
    :sswitch_39
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 852
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 853
    .restart local v51    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 854
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 855
    .restart local v53    # "id":I
    const/16 v54, 0x0

    .line 856
    .local v54, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35

    .line 857
    sget-object v5, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "notification":Landroid/app/Notification;
    check-cast v54, Landroid/app/Notification;

    .line 859
    .restart local v54    # "notification":Landroid/app/Notification;
    :cond_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_36

    const/16 v55, 0x1

    .local v55, "removeNotification":Z
    :goto_2f
    move-object/from16 v50, p0

    .line 860
    invoke-virtual/range {v50 .. v55}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 861
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 859
    .end local v55    # "removeNotification":Z
    :cond_36
    const/16 v55, 0x0

    goto :goto_2f

    .line 866
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v53    # "id":I
    .end local v54    # "notification":Landroid/app/Notification;
    :sswitch_3a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 868
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 869
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 870
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 871
    .restart local v59    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 872
    .restart local v9    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 874
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 875
    .restart local v17    # "userId":I
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .local v61, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v56, p0

    move-object/from16 v57, v6

    move-object/from16 v58, v52

    move-object/from16 v60, v9

    move/from16 v63, v17

    .line 876
    invoke-virtual/range {v56 .. v63}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I

    move-result v190

    .line 877
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 883
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v59    # "service":Landroid/content/Intent;
    .end local v61    # "conn":Landroid/app/IServiceConnection;
    .end local v62    # "fl":I
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v190    # "res":I
    :sswitch_3b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 885
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v61

    .line 886
    .restart local v61    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v190

    .line 887
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    if-eqz v190, :cond_37

    const/4 v5, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 889
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 888
    :cond_37
    const/4 v5, 0x0

    goto :goto_30

    .line 893
    .end local v61    # "conn":Landroid/app/IServiceConnection;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v190    # "res":Z
    :sswitch_3c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 895
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 896
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v59

    .line 897
    .local v59, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 898
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 903
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v59    # "service":Landroid/os/IBinder;
    :sswitch_3d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 905
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 906
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_38

    const/16 v134, 0x1

    .line 907
    .local v134, "doRebind":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v134

    invoke-virtual {v0, v1, v8, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 908
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 909
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 906
    .end local v134    # "doRebind":Z
    :cond_38
    const/16 v134, 0x0

    goto :goto_31

    .line 913
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_3e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 915
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 916
    .local v71, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 917
    .restart local v200    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v190

    .line 918
    .local v190, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v71

    move/from16 v3, v200

    move/from16 v4, v190

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 924
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v71    # "type":I
    .end local v190    # "res":I
    .end local v200    # "startId":I
    :sswitch_3f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v51

    .line 926
    .restart local v51    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 927
    .restart local v14    # "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 928
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v67

    .line 929
    .local v67, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 930
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v68

    .line 931
    .local v68, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 932
    invoke-static/range {v120 .. v120}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v69

    .line 933
    .local v69, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v63, p0

    move-object/from16 v64, v51

    move-object/from16 v65, v14

    move/from16 v66, v62

    move/from16 v70, v17

    .line 934
    invoke-virtual/range {v63 .. v70}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z

    move-result v190

    .line 935
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    if-eqz v190, :cond_39

    const/4 v5, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 937
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 936
    :cond_39
    const/4 v5, 0x0

    goto :goto_32

    .line 942
    .end local v14    # "profileFile":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v51    # "className":Landroid/content/ComponentName;
    .end local v62    # "fl":I
    .end local v67    # "arguments":Landroid/os/Bundle;
    .end local v68    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v69    # "c":Landroid/app/IUiAutomationConnection;
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v190    # "res":Z
    :sswitch_40
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 944
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 945
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 946
    .restart local v43    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v193

    .line 947
    .local v193, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v43

    move-object/from16 v2, v193

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 953
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v43    # "resultCode":I
    .end local v120    # "b":Landroid/os/IBinder;
    .end local v193    # "results":Landroid/os/Bundle;
    :sswitch_41
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v27

    .line 955
    .restart local v27    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 957
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 961
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_42
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 962
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 963
    .restart local v27    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 964
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 969
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_43
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 970
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 971
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 972
    .local v189, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v189

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 978
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v189    # "requestedOrientation":I
    :sswitch_44
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 980
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v187

    .line 981
    .local v187, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    move-object/from16 v0, p3

    move/from16 v1, v187

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 987
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v187    # "req":I
    :sswitch_45
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 989
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v128

    .line 990
    .restart local v128    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    move-object/from16 v0, v128

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 992
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 996
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v128    # "cn":Landroid/content/ComponentName;
    :sswitch_46
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 998
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1000
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1004
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_47
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v71

    .line 1006
    .restart local v71    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1007
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1008
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1009
    .restart local v11    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1012
    .restart local v12    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3a

    .line 1013
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v76

    check-cast v76, [Landroid/content/Intent;

    .line 1014
    .local v76, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v77

    .line 1019
    .local v77, "requestResolvedTypes":[Ljava/lang/String;
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1020
    .restart local v62    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3b

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1022
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v70, p0

    move-object/from16 v72, v20

    move-object/from16 v73, v52

    move-object/from16 v74, v11

    move/from16 v75, v12

    move/from16 v78, v62

    move-object/from16 v79, v16

    move/from16 v80, v17

    .line 1023
    invoke-virtual/range {v70 .. v80}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v190

    .line 1026
    .local v190, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    if-eqz v190, :cond_3c

    invoke-interface/range {v190 .. v190}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1028
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1016
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v62    # "fl":I
    .end local v76    # "requestIntents":[Landroid/content/Intent;
    .end local v77    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v190    # "res":Landroid/content/IIntentSender;
    :cond_3a
    const/16 v76, 0x0

    .line 1017
    .restart local v76    # "requestIntents":[Landroid/content/Intent;
    const/16 v77, 0x0

    .restart local v77    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_33

    .line 1020
    .restart local v62    # "fl":I
    :cond_3b
    const/16 v16, 0x0

    goto :goto_34

    .line 1027
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v190    # "res":Landroid/content/IIntentSender;
    :cond_3c
    const/4 v5, 0x0

    goto :goto_35

    .line 1032
    .end local v11    # "resultWho":Ljava/lang/String;
    .end local v12    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v62    # "fl":I
    .end local v71    # "type":I
    .end local v76    # "requestIntents":[Landroid/content/Intent;
    .end local v77    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v190    # "res":Landroid/content/IIntentSender;
    :sswitch_48
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1035
    .local v182, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1036
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1037
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1041
    .end local v182    # "r":Landroid/content/IIntentSender;
    :sswitch_49
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1044
    .restart local v182    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v190

    .line 1045
    .local v190, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1051
    .end local v182    # "r":Landroid/content/IIntentSender;
    .end local v190    # "res":Ljava/lang/String;
    :sswitch_4a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1054
    .restart local v182    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v190

    .line 1055
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1056
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1057
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1061
    .end local v182    # "r":Landroid/content/IIntentSender;
    .end local v190    # "res":I
    :sswitch_4b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1062
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 1063
    .local v79, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1064
    .local v80, "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1065
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3d

    const/16 v82, 0x1

    .line 1066
    .local v82, "allowAll":Z
    :goto_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3e

    const/16 v83, 0x1

    .line 1067
    .local v83, "requireFull":Z
    :goto_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1068
    .restart local v84    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v85

    .local v85, "callerPackage":Ljava/lang/String;
    move-object/from16 v78, p0

    move/from16 v81, v17

    .line 1069
    invoke-virtual/range {v78 .. v85}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v190

    .line 1071
    .restart local v190    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1072
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1073
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1065
    .end local v82    # "allowAll":Z
    .end local v83    # "requireFull":Z
    .end local v84    # "name":Ljava/lang/String;
    .end local v85    # "callerPackage":Ljava/lang/String;
    .end local v190    # "res":I
    :cond_3d
    const/16 v82, 0x0

    goto :goto_36

    .line 1066
    .restart local v82    # "allowAll":Z
    :cond_3e
    const/16 v83, 0x0

    goto :goto_37

    .line 1077
    .end local v17    # "userId":I
    .end local v79    # "callingPid":I
    .end local v80    # "callingUid":I
    .end local v82    # "allowAll":Z
    :sswitch_4c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v157

    .line 1079
    .local v157, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v157

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1080
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1085
    .end local v157    # "max":I
    :sswitch_4d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1086
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v148

    .line 1087
    .local v148, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    move-object/from16 v0, p3

    move/from16 v1, v148

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1089
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v148    # "limit":I
    :sswitch_4e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1095
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 1096
    .local v172, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    const/16 v146, 0x1

    .line 1097
    .local v146, "isForeground":Z
    :goto_38
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v172

    move/from16 v3, v146

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1096
    .end local v146    # "isForeground":Z
    :cond_3f
    const/16 v146, 0x0

    goto :goto_38

    .line 1103
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v172    # "pid":I
    :sswitch_4f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1105
    .restart local v23    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 1106
    .restart local v172    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 1107
    .local v210, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v172

    move/from16 v3, v210

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v190

    .line 1108
    .restart local v190    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1114
    .end local v23    # "perm":Ljava/lang/String;
    .end local v172    # "pid":I
    .end local v190    # "res":I
    .end local v210    # "uid":I
    :sswitch_50
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1115
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1116
    .local v97, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 1117
    .restart local v172    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 1118
    .restart local v210    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1119
    .local v98, "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v172

    move/from16 v3, v210

    move/from16 v4, v98

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v190

    .line 1120
    .restart local v190    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1121
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1126
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v172    # "pid":I
    .end local v190    # "res":I
    .end local v210    # "uid":I
    :sswitch_51
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1128
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v165

    .line 1130
    .local v165, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1131
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v165

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v190

    .line 1132
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    if-eqz v190, :cond_40

    const/4 v5, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1134
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1133
    :cond_40
    const/4 v5, 0x0

    goto :goto_39

    .line 1138
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v165    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v190    # "res":Z
    :sswitch_52
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1140
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1141
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1142
    .local v96, "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1143
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1144
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1150
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_53
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1152
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1153
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1154
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1155
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_54
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1162
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1163
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1164
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1165
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1166
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1170
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_55
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1171
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1172
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1173
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;I)V

    .line 1174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_56
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1181
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_41

    const/16 v141, 0x1

    .line 1182
    .local v141, "incoming":Z
    :goto_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v141

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v169

    .line 1184
    .local v169, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    const/4 v5, 0x1

    move-object/from16 v0, v169

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1186
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1181
    .end local v141    # "incoming":Z
    .end local v169    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_41
    const/16 v141, 0x0

    goto :goto_3a

    .line 1190
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_57
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1192
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1193
    .restart local v6    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_42

    const/16 v215, 0x1

    .line 1194
    .local v215, "waiting":Z
    :goto_3b
    move-object/from16 v0, p0

    move/from16 v1, v215

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1193
    .end local v215    # "waiting":Z
    :cond_42
    const/16 v215, 0x0

    goto :goto_3b

    .line 1200
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_58
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1201
    new-instance v160, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v160 .. v160}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1202
    .local v160, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v160

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1203
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    const/4 v5, 0x0

    move-object/from16 v0, v160

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1205
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1209
    .end local v160    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :sswitch_59
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1212
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1216
    :sswitch_5a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v97

    .line 1218
    .restart local v97    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v170

    .line 1219
    .local v170, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    if-eqz v170, :cond_43

    .line 1221
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    const/4 v5, 0x1

    move-object/from16 v0, v170

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1226
    :goto_3c
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1224
    :cond_43
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3c

    .line 1230
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v170    # "pfd":Landroid/os/ParcelFileDescriptor;
    :sswitch_5b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->goingToSleep()V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1237
    :sswitch_5c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->wakingUp()V

    .line 1239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1240
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1244
    :sswitch_5d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_44

    const/4 v5, 0x1

    :goto_3d
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1245
    :cond_44
    const/4 v5, 0x0

    goto :goto_3d

    .line 1251
    :sswitch_5e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v177

    .line 1253
    .local v177, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_45

    const/16 v218, 0x1

    .line 1254
    .local v218, "wfd":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46

    const/16 v168, 0x1

    .line 1255
    .local v168, "per":Z
    :goto_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v177

    move/from16 v2, v218

    move/from16 v3, v168

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1257
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1253
    .end local v168    # "per":Z
    .end local v218    # "wfd":Z
    :cond_45
    const/16 v218, 0x0

    goto :goto_3e

    .line 1254
    .restart local v218    # "wfd":Z
    :cond_46
    const/16 v168, 0x0

    goto :goto_3f

    .line 1261
    .end local v177    # "pn":Ljava/lang/String;
    .end local v218    # "wfd":Z
    :sswitch_5f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    const/16 v135, 0x1

    .line 1263
    .local v135, "enabled":Z
    :goto_40
    move-object/from16 v0, p0

    move/from16 v1, v135

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1265
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1262
    .end local v135    # "enabled":Z
    :cond_47
    const/16 v135, 0x0

    goto :goto_40

    .line 1269
    :sswitch_60
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v216

    .line 1272
    .local v216, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1273
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1278
    .end local v216    # "watcher":Landroid/app/IActivityController;
    :sswitch_61
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1279
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1280
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1285
    :sswitch_62
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v145

    .line 1288
    .local v145, "is":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;)V

    .line 1289
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1294
    .end local v145    # "is":Landroid/content/IIntentSender;
    :sswitch_63
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1295
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v173

    .line 1296
    .local v173, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v183

    .line 1297
    .local v183, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_48

    const/16 v194, 0x1

    .line 1298
    .local v194, "secure":Z
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v183

    move/from16 v3, v194

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v190

    .line 1299
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    if-eqz v190, :cond_49

    const/4 v5, 0x1

    :goto_42
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1301
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1297
    .end local v190    # "res":Z
    .end local v194    # "secure":Z
    :cond_48
    const/16 v194, 0x0

    goto :goto_41

    .line 1300
    .restart local v190    # "res":Z
    .restart local v194    # "secure":Z
    :cond_49
    const/4 v5, 0x0

    goto :goto_42

    .line 1305
    .end local v173    # "pids":[I
    .end local v183    # "reason":Ljava/lang/String;
    .end local v190    # "res":Z
    .end local v194    # "secure":Z
    :sswitch_64
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v183

    .line 1307
    .restart local v183    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v190

    .line 1308
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    if-eqz v190, :cond_4a

    const/4 v5, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1309
    :cond_4a
    const/4 v5, 0x0

    goto :goto_43

    .line 1314
    .end local v183    # "reason":Ljava/lang/String;
    .end local v190    # "res":Z
    :sswitch_65
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 1316
    .local v174, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v127

    .line 1317
    .local v127, "cls":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    .line 1318
    .local v113, "action":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v142

    .line 1319
    .local v142, "indata":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move-object/from16 v2, v127

    move-object/from16 v3, v113

    move-object/from16 v4, v142

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1325
    .end local v113    # "action":Ljava/lang/String;
    .end local v127    # "cls":Ljava/lang/String;
    .end local v142    # "indata":Ljava/lang/String;
    .end local v174    # "pkg":Ljava/lang/String;
    :sswitch_66
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1327
    .local v6, "app":Landroid/os/IBinder;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1328
    .local v126, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v126

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1329
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1334
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v126    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :sswitch_67
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1336
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v204

    .line 1337
    .local v204, "tag":Ljava/lang/String;
    new-instance v126, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v126

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1338
    .restart local v126    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v204

    move-object/from16 v2, v126

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v190

    .line 1339
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1340
    if-eqz v190, :cond_4b

    const/4 v5, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1341
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1340
    :cond_4b
    const/4 v5, 0x0

    goto :goto_44

    .line 1345
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v126    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v190    # "res":Z
    .end local v204    # "tag":Ljava/lang/String;
    :sswitch_68
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1347
    .restart local v6    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v214

    .line 1348
    .local v214, "violationMask":I
    new-instance v143, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v143

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1349
    .local v143, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v214

    move-object/from16 v2, v143

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1355
    .end local v6    # "app":Landroid/os/IBinder;
    .end local v143    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v214    # "violationMask":I
    :sswitch_69
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v196

    .line 1357
    .local v196, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v196

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1359
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1363
    .end local v196    # "sig":I
    :sswitch_6a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1365
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1366
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_6b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1373
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1374
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1375
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1379
    :sswitch_6c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1381
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1382
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1383
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1384
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1388
    .end local v17    # "userId":I
    .end local v20    # "packageName":Ljava/lang/String;
    :sswitch_6d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1389
    new-instance v143, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v143 .. v143}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1391
    .local v143, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    const/4 v5, 0x0

    move-object/from16 v0, v143

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1394
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1398
    .end local v143    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :sswitch_6e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1399
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v27

    .line 1400
    .local v27, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1401
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1402
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1406
    .end local v27    # "config":Landroid/content/pm/ConfigurationInfo;
    :sswitch_6f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1408
    .local v87, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1409
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4c

    const/16 v89, 0x1

    .line 1410
    .local v89, "start":Z
    :goto_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 1411
    .local v92, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1412
    .local v90, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4d

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v91, v5

    .local v91, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_46
    move-object/from16 v86, p0

    move/from16 v88, v17

    .line 1414
    invoke-virtual/range {v86 .. v92}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z

    move-result v190

    .line 1415
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    if-eqz v190, :cond_4e

    const/4 v5, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1417
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1409
    .end local v89    # "start":Z
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "profileType":I
    .end local v190    # "res":Z
    :cond_4c
    const/16 v89, 0x0

    goto :goto_45

    .line 1412
    .restart local v89    # "start":Z
    .restart local v90    # "path":Ljava/lang/String;
    .restart local v92    # "profileType":I
    :cond_4d
    const/16 v91, 0x0

    goto :goto_46

    .line 1416
    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v190    # "res":Z
    :cond_4e
    const/4 v5, 0x0

    goto :goto_47

    .line 1421
    .end local v17    # "userId":I
    .end local v87    # "process":Ljava/lang/String;
    .end local v89    # "start":Z
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v92    # "profileType":I
    .end local v190    # "res":Z
    :sswitch_70
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v190

    .line 1423
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1424
    if-eqz v190, :cond_4f

    const/4 v5, 0x1

    :goto_48
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1424
    :cond_4f
    const/4 v5, 0x0

    goto :goto_48

    .line 1429
    .end local v190    # "res":Z
    :sswitch_71
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1436
    :sswitch_72
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1438
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1439
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1443
    :sswitch_73
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1444
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/content/Intent;

    .line 1445
    .local v59, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1446
    .restart local v9    # "resolvedType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v9}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v122

    .line 1447
    .local v122, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    move-object/from16 v0, p3

    move-object/from16 v1, v122

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1449
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1453
    .end local v9    # "resolvedType":Ljava/lang/String;
    .end local v59    # "service":Landroid/content/Intent;
    .end local v122    # "binder":Landroid/os/IBinder;
    :sswitch_74
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/content/pm/ApplicationInfo;

    .line 1455
    .local v143, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v121

    .line 1456
    .local v121, "backupRestoreMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v121

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z

    move-result v203

    .line 1457
    .local v203, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    if-eqz v203, :cond_50

    const/4 v5, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1459
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1458
    :cond_50
    const/4 v5, 0x0

    goto :goto_49

    .line 1463
    .end local v121    # "backupRestoreMode":I
    .end local v143    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v203    # "success":Z
    :sswitch_75
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1465
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v114

    .line 1466
    .local v114, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1472
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v114    # "agent":Landroid/os/IBinder;
    :sswitch_76
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/content/pm/ApplicationInfo;

    .line 1474
    .restart local v143    # "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1475
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1476
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1480
    .end local v143    # "info":Landroid/content/pm/ApplicationInfo;
    :sswitch_77
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 1482
    .restart local v174    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1483
    .local v117, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v183

    .line 1484
    .restart local v183    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, v117

    move-object/from16 v3, v183

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1486
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1490
    .end local v117    # "appid":I
    .end local v174    # "pkg":Ljava/lang/String;
    .end local v183    # "reason":Ljava/lang/String;
    :sswitch_78
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1491
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v183

    .line 1492
    .restart local v183    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1494
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1498
    .end local v183    # "reason":Ljava/lang/String;
    :sswitch_79
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v173

    .line 1500
    .restart local v173    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v190

    .line 1501
    .local v190, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1503
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1507
    .end local v173    # "pids":[I
    .end local v190    # "res":[Landroid/os/Debug$MemoryInfo;
    :sswitch_7a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v179

    .line 1509
    .local v179, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 1510
    .restart local v210    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v179

    move/from16 v2, v210

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1516
    .end local v179    # "processName":Ljava/lang/String;
    .end local v210    # "uid":I
    :sswitch_7b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1518
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1519
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1520
    .local v136, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v137

    .line 1521
    .local v137, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v20

    move/from16 v3, v136

    move/from16 v4, v137

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v136    # "enterAnim":I
    .end local v137    # "exitAnim":I
    :sswitch_7c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v118

    .line 1529
    .local v118, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    if-eqz v118, :cond_51

    const/4 v5, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1530
    :cond_51
    const/4 v5, 0x0

    goto :goto_4a

    .line 1535
    .end local v118    # "areThey":Z
    :sswitch_7d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_52

    const/16 v162, 0x1

    .line 1537
    .local v162, "monkey":Z
    :goto_4b
    move-object/from16 v0, p0

    move/from16 v1, v162

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1538
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1536
    .end local v162    # "monkey":Z
    :cond_52
    const/16 v162, 0x0

    goto :goto_4b

    .line 1543
    :sswitch_7e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1544
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1550
    :sswitch_7f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1552
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v147

    .line 1553
    .local v147, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    if-eqz v147, :cond_53

    const/4 v5, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1554
    :cond_53
    const/4 v5, 0x0

    goto :goto_4c

    .line 1559
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v147    # "isit":Z
    :sswitch_80
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1561
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v130

    .line 1562
    .local v130, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    if-eqz v130, :cond_54

    const/4 v5, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1564
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1563
    :cond_54
    const/4 v5, 0x0

    goto :goto_4d

    .line 1568
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v130    # "converted":Z
    :sswitch_81
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1570
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;)Z

    move-result v130

    .line 1571
    .restart local v130    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1572
    if-eqz v130, :cond_55

    const/4 v5, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1572
    :cond_55
    const/4 v5, 0x0

    goto :goto_4e

    .line 1577
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v130    # "converted":Z
    :sswitch_82
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1579
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_56

    const/16 v140, 0x1

    .line 1580
    .local v140, "imm":Z
    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v140

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1579
    .end local v140    # "imm":Z
    :cond_56
    const/16 v140, 0x0

    goto :goto_4f

    .line 1586
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_83
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v147

    .line 1588
    .restart local v147    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    if-eqz v147, :cond_57

    const/4 v5, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1589
    :cond_57
    const/4 v5, 0x0

    goto :goto_50

    .line 1594
    .end local v147    # "isit":Z
    :sswitch_84
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 1596
    .restart local v210    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v144

    .line 1597
    .local v144, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1598
    .restart local v20    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v159

    .line 1599
    .local v159, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v210

    move/from16 v2, v144

    move-object/from16 v3, v20

    move-object/from16 v4, v159

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1600
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1605
    .end local v20    # "packageName":Ljava/lang/String;
    .end local v144    # "initialPid":I
    .end local v159    # "message":Ljava/lang/String;
    .end local v210    # "uid":I
    :sswitch_85
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1606
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1607
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1608
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v71

    .line 1609
    .local v71, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1610
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1611
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1615
    .end local v17    # "userId":I
    .end local v71    # "type":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    :sswitch_86
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v84

    .line 1617
    .restart local v84    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v23

    .line 1618
    .local v23, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1620
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1624
    .end local v23    # "perm":Landroid/os/IBinder;
    .end local v84    # "name":Ljava/lang/String;
    :sswitch_87
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1626
    .local v94, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    .line 1627
    .local v95, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1628
    .restart local v96    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1629
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .restart local v98    # "mode":I
    move-object/from16 v93, p0

    .line 1630
    invoke-virtual/range {v93 .. v98}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V

    .line 1631
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1632
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1636
    .end local v94    # "owner":Landroid/os/IBinder;
    .end local v95    # "fromUid":I
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_88
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v94

    .line 1638
    .restart local v94    # "owner":Landroid/os/IBinder;
    const/16 v97, 0x0

    .line 1639
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_58

    .line 1640
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 1642
    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1643
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v94

    move-object/from16 v2, v97

    move/from16 v3, v98

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V

    .line 1644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1645
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1649
    .end local v94    # "owner":Landroid/os/IBinder;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v98    # "mode":I
    :sswitch_89
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v80

    .line 1651
    .restart local v80    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 1652
    .restart local v96    # "targetPkg":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/net/Uri;

    .line 1653
    .restart local v97    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v161

    .line 1654
    .local v161, "modeFlags":I
    move-object/from16 v0, p0

    move/from16 v1, v80

    move-object/from16 v2, v96

    move-object/from16 v3, v97

    move/from16 v4, v161

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I

    move-result v190

    .line 1655
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1661
    .end local v80    # "callingUid":I
    .end local v96    # "targetPkg":Ljava/lang/String;
    .end local v97    # "uri":Landroid/net/Uri;
    .end local v161    # "modeFlags":I
    .end local v190    # "res":I
    :sswitch_8a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v87

    .line 1663
    .restart local v87    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1664
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    const/16 v102, 0x1

    .line 1665
    .local v102, "managed":Z
    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v90

    .line 1666
    .restart local v90    # "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5a

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v91, v5

    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_52
    move-object/from16 v99, p0

    move-object/from16 v100, v87

    move/from16 v101, v17

    move-object/from16 v103, v90

    move-object/from16 v104, v91

    .line 1668
    invoke-virtual/range {v99 .. v104}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v190

    .line 1669
    .local v190, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    if-eqz v190, :cond_5b

    const/4 v5, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1664
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v190    # "res":Z
    :cond_59
    const/16 v102, 0x0

    goto :goto_51

    .line 1666
    .restart local v90    # "path":Ljava/lang/String;
    .restart local v102    # "managed":Z
    :cond_5a
    const/16 v91, 0x0

    goto :goto_52

    .line 1670
    .restart local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v190    # "res":Z
    :cond_5b
    const/4 v5, 0x0

    goto :goto_53

    .line 1676
    .end local v17    # "userId":I
    .end local v87    # "process":Ljava/lang/String;
    .end local v90    # "path":Ljava/lang/String;
    .end local v91    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v102    # "managed":Z
    .end local v190    # "res":Z
    :sswitch_8b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v120

    .line 1678
    .restart local v120    # "b":Landroid/os/IBinder;
    invoke-static/range {v120 .. v120}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1679
    .local v6, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1680
    .restart local v7    # "callingPackage":Ljava/lang/String;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/content/Intent;

    .line 1681
    .local v106, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v107

    .line 1682
    .local v107, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 1683
    .local v10, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5c

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    move-object/from16 v16, v5

    .line 1685
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v103, p0

    move-object/from16 v104, v6

    move-object/from16 v105, v7

    move-object/from16 v108, v10

    move-object/from16 v109, v16

    move/from16 v110, v17

    .line 1686
    invoke-virtual/range {v103 .. v110}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v192

    .line 1688
    .local v192, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    move-object/from16 v0, p3

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1683
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v192    # "result":I
    :cond_5c
    const/16 v16, 0x0

    goto :goto_54

    .line 1695
    .end local v6    # "app":Landroid/app/IApplicationThread;
    .end local v7    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resultTo":Landroid/os/IBinder;
    .end local v106    # "intents":[Landroid/content/Intent;
    .end local v107    # "resolvedTypes":[Ljava/lang/String;
    .end local v120    # "b":Landroid/os/IBinder;
    :sswitch_8c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1696
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v98

    .line 1697
    .restart local v98    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1698
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1699
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1704
    .end local v98    # "mode":I
    :sswitch_8d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1706
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1714
    .end local v98    # "mode":I
    :sswitch_8e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 1716
    .restart local v174    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v98

    .line 1717
    .restart local v98    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    move-object/from16 v0, p3

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v98    # "mode":I
    .end local v174    # "pkg":Ljava/lang/String;
    :sswitch_8f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 1726
    .restart local v174    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v98

    .line 1727
    .restart local v98    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1729
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1733
    .end local v98    # "mode":I
    .end local v174    # "pkg":Ljava/lang/String;
    :sswitch_90
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v213

    .line 1735
    .local v213, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v213

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v192

    .line 1736
    .local v192, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    if-eqz v192, :cond_5d

    const/4 v5, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1737
    :cond_5d
    const/4 v5, 0x0

    goto :goto_55

    .line 1742
    .end local v192    # "result":Z
    .end local v213    # "userid":I
    :sswitch_91
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1743
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v213

    .line 1744
    .restart local v213    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v124

    .line 1746
    .local v124, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v213

    move-object/from16 v2, v124

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v192

    .line 1747
    .local v192, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    move-object/from16 v0, p3

    move/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1749
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v124    # "callback":Landroid/app/IStopUserCallback;
    .end local v192    # "result":I
    .end local v213    # "userid":I
    :sswitch_92
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v212

    .line 1755
    .local v212, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    const/4 v5, 0x0

    move-object/from16 v0, v212

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v5}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1757
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1761
    .end local v212    # "userInfo":Landroid/content/pm/UserInfo;
    :sswitch_93
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v213

    .line 1763
    .restart local v213    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    const/16 v167, 0x1

    .line 1764
    .local v167, "orStopping":Z
    :goto_56
    move-object/from16 v0, p0

    move/from16 v1, v213

    move/from16 v2, v167

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v192

    .line 1765
    .local v192, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    if-eqz v192, :cond_5f

    const/4 v5, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1767
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1763
    .end local v167    # "orStopping":Z
    .end local v192    # "result":Z
    :cond_5e
    const/16 v167, 0x0

    goto :goto_56

    .line 1766
    .restart local v167    # "orStopping":Z
    .restart local v192    # "result":Z
    :cond_5f
    const/4 v5, 0x0

    goto :goto_57

    .line 1771
    .end local v167    # "orStopping":Z
    .end local v192    # "result":Z
    .end local v213    # "userid":I
    :sswitch_94
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1772
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v192

    .line 1773
    .local v192, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move-object/from16 v0, p3

    move-object/from16 v1, v192

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1775
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1780
    .end local v192    # "result":[I
    :sswitch_95
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 1782
    .restart local v207    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v202

    .line 1783
    .local v202, "subTaskIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v202

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeSubTask(II)Z

    move-result v192

    .line 1784
    .local v192, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    if-eqz v192, :cond_60

    const/4 v5, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1786
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1785
    :cond_60
    const/4 v5, 0x0

    goto :goto_58

    .line 1791
    .end local v192    # "result":Z
    .end local v202    # "subTaskIndex":I
    .end local v207    # "taskId":I
    :sswitch_96
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1792
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v207

    .line 1793
    .restart local v207    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 1794
    .restart local v62    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v207

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeTask(II)Z

    move-result v192

    .line 1795
    .restart local v192    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1796
    if-eqz v192, :cond_61

    const/4 v5, 0x1

    :goto_59
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1797
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1796
    :cond_61
    const/4 v5, 0x0

    goto :goto_59

    .line 1801
    .end local v62    # "fl":I
    .end local v192    # "result":Z
    .end local v207    # "taskId":I
    :sswitch_97
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1802
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v165

    .line 1804
    .local v165, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1805
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1809
    .end local v165    # "observer":Landroid/app/IProcessObserver;
    :sswitch_98
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v165

    .line 1812
    .restart local v165    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1813
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1818
    .end local v165    # "observer":Landroid/app/IProcessObserver;
    :sswitch_99
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 1820
    .restart local v174    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v119

    .line 1821
    .local v119, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    if-eqz v119, :cond_62

    const/4 v5, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1823
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1822
    :cond_62
    const/4 v5, 0x0

    goto :goto_5a

    .line 1828
    .end local v119    # "ask":Z
    .end local v174    # "pkg":Ljava/lang/String;
    :sswitch_9a
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v174

    .line 1830
    .restart local v174    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    const/16 v119, 0x1

    .line 1831
    .restart local v119    # "ask":Z
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v174

    move/from16 v2, v119

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 1832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1830
    .end local v119    # "ask":Z
    :cond_63
    const/16 v119, 0x0

    goto :goto_5b

    .line 1837
    .end local v174    # "pkg":Ljava/lang/String;
    :sswitch_9b
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1840
    .restart local v182    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v190

    .line 1841
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1842
    if-eqz v190, :cond_64

    const/4 v5, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1843
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1842
    :cond_64
    const/4 v5, 0x0

    goto :goto_5c

    .line 1847
    .end local v182    # "r":Landroid/content/IIntentSender;
    .end local v190    # "res":Z
    :sswitch_9c
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1850
    .restart local v182    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v190

    .line 1851
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1852
    if-eqz v190, :cond_65

    const/4 v5, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1853
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1852
    :cond_65
    const/4 v5, 0x0

    goto :goto_5d

    .line 1857
    .end local v182    # "r":Landroid/content/IIntentSender;
    .end local v190    # "res":Z
    :sswitch_9d
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v182

    .line 1860
    .restart local v182    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v182

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v8

    .line 1861
    .restart local v8    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    if-eqz v8, :cond_66

    .line 1863
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1868
    :goto_5e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1866
    :cond_66
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e

    .line 1872
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v182    # "r":Landroid/content/IIntentSender;
    :sswitch_9e
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/content/res/Configuration;

    .line 1874
    .local v27, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 1875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1880
    .end local v27    # "config":Landroid/content/res/Configuration;
    :sswitch_9f
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v173

    .line 1882
    .restart local v173    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v181

    .line 1883
    .local v181, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    move-object/from16 v0, p3

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1885
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1889
    .end local v173    # "pids":[I
    .end local v181    # "pss":[J
    :sswitch_a0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    sget-object v5, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v163

    check-cast v163, Ljava/lang/CharSequence;

    .line 1891
    .local v163, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_67

    const/16 v116, 0x1

    .line 1892
    .local v116, "always":Z
    :goto_5f
    move-object/from16 v0, p0

    move-object/from16 v1, v163

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 1893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1894
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1891
    .end local v116    # "always":Z
    :cond_67
    const/16 v116, 0x0

    goto :goto_5f

    .line 1898
    .end local v163    # "msg":Ljava/lang/CharSequence;
    :sswitch_a1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->dismissKeyguardOnNextActivity()V

    .line 1900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1905
    :sswitch_a2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1907
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v133

    .line 1908
    .local v133, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v133

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v190

    .line 1909
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    if-eqz v190, :cond_68

    const/4 v5, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1910
    :cond_68
    const/4 v5, 0x0

    goto :goto_60

    .line 1915
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v133    # "destAffinity":Ljava/lang/String;
    .end local v190    # "res":Z
    :sswitch_a3
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1917
    .restart local v52    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v205

    check-cast v205, Landroid/content/Intent;

    .line 1918
    .local v205, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1919
    .restart local v43    # "resultCode":I
    const/16 v44, 0x0

    .line 1920
    .local v44, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_69

    .line 1921
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    .end local v44    # "resultData":Landroid/content/Intent;
    check-cast v44, Landroid/content/Intent;

    .line 1923
    .restart local v44    # "resultData":Landroid/content/Intent;
    :cond_69
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v205

    move/from16 v3, v43

    move-object/from16 v4, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v190

    .line 1924
    .restart local v190    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1925
    if-eqz v190, :cond_6a

    const/4 v5, 0x1

    :goto_61
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1925
    :cond_6a
    const/4 v5, 0x0

    goto :goto_61

    .line 1930
    .end local v43    # "resultCode":I
    .end local v44    # "resultData":Landroid/content/Intent;
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":Z
    .end local v205    # "target":Landroid/content/Intent;
    :sswitch_a4
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1932
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v190

    .line 1933
    .local v190, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    move-object/from16 v0, p3

    move/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1939
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":I
    :sswitch_a5
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1941
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v190

    .line 1942
    .local v190, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1943
    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1944
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1948
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v190    # "res":Ljava/lang/String;
    :sswitch_a6
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v165

    .line 1951
    .local v165, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1957
    .end local v165    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_a7
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v165

    .line 1960
    .restart local v165    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 1961
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1966
    .end local v165    # "observer":Landroid/app/IUserSwitchObserver;
    :sswitch_a8
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1967
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 1968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1969
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1973
    :sswitch_a9
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1974
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v172

    .line 1975
    .restart local v172    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6b

    const/16 v112, 0x1

    .line 1976
    .local v112, "aboveSystem":Z
    :goto_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v183

    .line 1977
    .restart local v183    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v172

    move/from16 v2, v112

    move-object/from16 v3, v183

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v190

    .line 1978
    .local v190, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    move-object/from16 v0, p3

    move-wide/from16 v1, v190

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 1980
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1975
    .end local v112    # "aboveSystem":Z
    .end local v183    # "reason":Ljava/lang/String;
    .end local v190    # "res":J
    :cond_6b
    const/16 v112, 0x0

    goto :goto_62

    .line 1984
    .end local v172    # "pid":I
    :sswitch_aa
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v188

    .line 1986
    .local v188, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v188

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v190

    .line 1987
    .local v190, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1988
    move-object/from16 v0, p3

    move-object/from16 v1, v190

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1989
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1993
    .end local v188    # "requestType":I
    .end local v190    # "res":Landroid/os/Bundle;
    :sswitch_ab
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1994
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 1995
    .restart local v52    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v138

    .line 1996
    .local v138, "extras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v138

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1997
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1998
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2002
    .end local v52    # "token":Landroid/os/IBinder;
    .end local v138    # "extras":Landroid/os/Bundle;
    :sswitch_ac
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v210

    .line 2004
    .restart local v210    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v183

    .line 2005
    .restart local v183    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v210

    move-object/from16 v2, v183

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killUid(ILjava/lang/String;)V

    .line 2006
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2007
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2011
    .end local v183    # "reason":Ljava/lang/String;
    .end local v210    # "uid":I
    :sswitch_ad
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v42

    .line 2013
    .restart local v42    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6c

    const/16 v115, 0x1

    .line 2014
    .local v115, "allowRestart":Z
    :goto_63
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2015
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2016
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2013
    .end local v115    # "allowRestart":Z
    :cond_6c
    const/16 v115, 0x0

    goto :goto_63

    .line 2020
    .end local v42    # "who":Landroid/os/IBinder;
    :sswitch_ae
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2022
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2024
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2028
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_af
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2029
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v52

    .line 2030
    .restart local v52    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2031
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2032
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2036
    .end local v52    # "token":Landroid/os/IBinder;
    :sswitch_b0
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2037
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2039
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2043
    :sswitch_b1
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2044
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2045
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2046
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2053
    :sswitch_b2
    const-string v5, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2054
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v175

    .line 2055
    .local v175, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6d

    const/16 v195, 0x1

    .line 2056
    .local v195, "set":Z
    :goto_64
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move/from16 v2, v195

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPersistentForce(Ljava/lang/String;Z)V

    .line 2057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 2055
    .end local v195    # "set":Z
    :cond_6d
    const/16 v195, 0x0

    goto :goto_64

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_65
        0x2 -> :sswitch_66
        0x3 -> :sswitch_1
        0x4 -> :sswitch_59
        0x5 -> :sswitch_5a
        0xb -> :sswitch_7
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_d
        0xf -> :sswitch_e
        0x10 -> :sswitch_f
        0x11 -> :sswitch_10
        0x12 -> :sswitch_11
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_17
        0x16 -> :sswitch_18
        0x17 -> :sswitch_19
        0x18 -> :sswitch_21
        0x19 -> :sswitch_22
        0x1a -> :sswitch_24
        0x1b -> :sswitch_2b
        0x1c -> :sswitch_2c
        0x1d -> :sswitch_2d
        0x1e -> :sswitch_2f
        0x1f -> :sswitch_30
        0x20 -> :sswitch_8
        0x21 -> :sswitch_35
        0x22 -> :sswitch_36
        0x23 -> :sswitch_37
        0x24 -> :sswitch_3a
        0x25 -> :sswitch_3b
        0x26 -> :sswitch_3c
        0x27 -> :sswitch_12
        0x28 -> :sswitch_5b
        0x29 -> :sswitch_5c
        0x2a -> :sswitch_5e
        0x2b -> :sswitch_5f
        0x2c -> :sswitch_3f
        0x2d -> :sswitch_40
        0x2e -> :sswitch_41
        0x2f -> :sswitch_42
        0x30 -> :sswitch_38
        0x31 -> :sswitch_45
        0x32 -> :sswitch_46
        0x33 -> :sswitch_4c
        0x34 -> :sswitch_4d
        0x35 -> :sswitch_4f
        0x36 -> :sswitch_50
        0x37 -> :sswitch_52
        0x38 -> :sswitch_53
        0x39 -> :sswitch_60
        0x3a -> :sswitch_57
        0x3b -> :sswitch_69
        0x3c -> :sswitch_1a
        0x3d -> :sswitch_3e
        0x3e -> :sswitch_16
        0x3f -> :sswitch_47
        0x40 -> :sswitch_48
        0x41 -> :sswitch_49
        0x42 -> :sswitch_61
        0x43 -> :sswitch_6
        0x44 -> :sswitch_62
        0x45 -> :sswitch_33
        0x46 -> :sswitch_43
        0x47 -> :sswitch_44
        0x48 -> :sswitch_3d
        0x49 -> :sswitch_4e
        0x4a -> :sswitch_39
        0x4b -> :sswitch_23
        0x4c -> :sswitch_58
        0x4d -> :sswitch_1e
        0x4e -> :sswitch_51
        0x4f -> :sswitch_6c
        0x50 -> :sswitch_63
        0x51 -> :sswitch_1d
        0x52 -> :sswitch_1b
        0x53 -> :sswitch_1f
        0x54 -> :sswitch_6e
        0x55 -> :sswitch_73
        0x56 -> :sswitch_6f
        0x57 -> :sswitch_70
        0x58 -> :sswitch_71
        0x59 -> :sswitch_72
        0x5a -> :sswitch_74
        0x5b -> :sswitch_75
        0x5c -> :sswitch_76
        0x5d -> :sswitch_4a
        0x5e -> :sswitch_4b
        0x5f -> :sswitch_1c
        0x60 -> :sswitch_77
        0x61 -> :sswitch_78
        0x62 -> :sswitch_79
        0x63 -> :sswitch_7a
        0x64 -> :sswitch_5
        0x65 -> :sswitch_7b
        0x66 -> :sswitch_67
        0x67 -> :sswitch_6a
        0x68 -> :sswitch_7c
        0x69 -> :sswitch_3
        0x6a -> :sswitch_a
        0x6b -> :sswitch_4
        0x6c -> :sswitch_20
        0x6d -> :sswitch_7e
        0x6e -> :sswitch_68
        0x6f -> :sswitch_7f
        0x70 -> :sswitch_82
        0x71 -> :sswitch_83
        0x72 -> :sswitch_84
        0x73 -> :sswitch_85
        0x74 -> :sswitch_86
        0x75 -> :sswitch_87
        0x76 -> :sswitch_88
        0x77 -> :sswitch_89
        0x78 -> :sswitch_8a
        0x79 -> :sswitch_8b
        0x7a -> :sswitch_93
        0x7b -> :sswitch_15
        0x7c -> :sswitch_8c
        0x7d -> :sswitch_8d
        0x7e -> :sswitch_8e
        0x7f -> :sswitch_8f
        0x80 -> :sswitch_99
        0x81 -> :sswitch_9a
        0x82 -> :sswitch_90
        0x83 -> :sswitch_95
        0x84 -> :sswitch_96
        0x85 -> :sswitch_97
        0x86 -> :sswitch_98
        0x87 -> :sswitch_9b
        0x88 -> :sswitch_9e
        0x89 -> :sswitch_9f
        0x8a -> :sswitch_a0
        0x8b -> :sswitch_a1
        0x8c -> :sswitch_6b
        0x8d -> :sswitch_2e
        0x8e -> :sswitch_34
        0x8f -> :sswitch_6d
        0x90 -> :sswitch_64
        0x91 -> :sswitch_92
        0x92 -> :sswitch_a2
        0x93 -> :sswitch_a3
        0x94 -> :sswitch_5d
        0x95 -> :sswitch_9
        0x96 -> :sswitch_a4
        0x97 -> :sswitch_31
        0x98 -> :sswitch_9c
        0x99 -> :sswitch_2
        0x9a -> :sswitch_91
        0x9b -> :sswitch_a6
        0x9c -> :sswitch_a7
        0x9d -> :sswitch_94
        0x9e -> :sswitch_a8
        0x9f -> :sswitch_a9
        0xa1 -> :sswitch_9d
        0xa2 -> :sswitch_aa
        0xa3 -> :sswitch_ab
        0xa4 -> :sswitch_a5
        0xa5 -> :sswitch_ac
        0xa6 -> :sswitch_7d
        0xa7 -> :sswitch_ad
        0xa8 -> :sswitch_25
        0xa9 -> :sswitch_26
        0xaa -> :sswitch_27
        0xab -> :sswitch_28
        0xac -> :sswitch_2a
        0xad -> :sswitch_29
        0xae -> :sswitch_80
        0xaf -> :sswitch_81
        0xb0 -> :sswitch_af
        0xb1 -> :sswitch_ae
        0xb2 -> :sswitch_b0
        0xb3 -> :sswitch_b1
        0xb4 -> :sswitch_54
        0xb5 -> :sswitch_55
        0xb6 -> :sswitch_56
        0xb7 -> :sswitch_32
        0xb8 -> :sswitch_b2
        0xbba -> :sswitch_0
    .end sparse-switch
.end method
