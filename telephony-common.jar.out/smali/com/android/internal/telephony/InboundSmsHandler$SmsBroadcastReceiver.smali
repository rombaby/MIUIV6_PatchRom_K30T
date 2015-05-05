.class final Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SmsBroadcastReceiver"
.end annotation


# instance fields
.field private mBroadcastTimeNano:J

.field private final mDeleteWhere:Ljava/lang/String;

.field private final mDeleteWhereArgs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .locals 2
    .param p2, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 908
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    .line 909
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    .line 910
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    .line 911
    return-void
.end method

.method static synthetic access_mDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access_mDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 915
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 918
    const-string v7, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 919
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 920
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v8, "android.permission.RECEIVE_SMS"

    const/16 v9, 0x10

    invoke-virtual {v7, p2, v8, v9, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1011
    :goto_0
    return-void

    .line 922
    :cond_0
    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 924
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 925
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 926
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v8, "android.permission.RECEIVE_SMS"

    const/16 v9, 0x10

    invoke-virtual {v7, p2, v8, v9, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 928
    :cond_1
    const-string v7, "android.provider.Telephony.LESAFE_SMS_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 929
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v6

    .line 930
    .local v6, "rc":I
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cgm lesafe sms result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 931
    const/16 v7, -0x65

    if-ne v6, v7, :cond_2

    .line 932
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reject by lesafe:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 933
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 934
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 936
    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lesafe is sleep continue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 937
    const-string v7, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v7, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 940
    .local v2, "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_3

    .line 942
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 943
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering SMS to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 947
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v8, "android.permission.RECEIVE_SMS"

    const/16 v9, 0x10

    invoke-virtual {v7, p2, v8, v9, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 950
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v6    # "rc":I
    :cond_4
    const-string v7, "android.provider.Telephony.LESAFE_MMS_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 951
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v6

    .line 952
    .restart local v6    # "rc":I
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cgm lesafe mms result:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 953
    const/16 v7, -0x65

    if-ne v6, v7, :cond_5

    .line 954
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Reject by lesafe:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 955
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 956
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 958
    :cond_5
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lesafe is sleep continue:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 959
    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 961
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v7, v7, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 964
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    if-eqz v2, :cond_6

    .line 966
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 967
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Delivering MMS to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 973
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    .line 974
    .local v4, "mimeType":Ljava/lang/String;
    const-string v7, "application/vnd.wap.mms-message"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 975
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v8, "WapPush set permission for RECEIVE_MMS"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 976
    const-string v5, "android.permission.RECEIVE_MMS"

    .line 977
    .local v5, "permission":Ljava/lang/String;
    const/16 v1, 0x12

    .line 983
    .local v1, "appOp":I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v7, p2, v5, v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto/16 :goto_0

    .line 979
    .end local v1    # "appOp":I
    .end local v5    # "permission":Ljava/lang/String;
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v8, "WapPush set permission for RECEIVE_WAP_PUSH"

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 980
    const-string v5, "android.permission.RECEIVE_WAP_PUSH"

    .line 981
    .restart local v5    # "permission":Ljava/lang/String;
    const/16 v1, 0x13

    .restart local v1    # "appOp":I
    goto :goto_1

    .line 987
    .end local v1    # "appOp":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "permission":Ljava/lang/String;
    .end local v6    # "rc":I
    :cond_8
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 990
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected BroadcastReceiver action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 993
    :cond_9
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v6

    .line 994
    .restart local v6    # "rc":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    const/4 v7, 0x1

    if-eq v6, v7, :cond_a

    .line 995
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "a broadcast receiver set the result code to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", deleting from raw table anyway!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1001
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhere:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mDeleteWhereArgs:[Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1002
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1004
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->mBroadcastTimeNano:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0xf4240

    div-long/2addr v7, v9

    long-to-int v3, v7

    .line 1005
    .local v3, "durationMillis":I
    const/16 v7, 0x1388

    if-lt v3, v7, :cond_b

    .line 1006
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Slow ordered broadcast completion time: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 998
    .end local v3    # "durationMillis":I
    :cond_a
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    const-string v8, "successful broadcast, deleting from raw table."

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1008
    .restart local v3    # "durationMillis":I
    :cond_b
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ordered broadcast completed in: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
