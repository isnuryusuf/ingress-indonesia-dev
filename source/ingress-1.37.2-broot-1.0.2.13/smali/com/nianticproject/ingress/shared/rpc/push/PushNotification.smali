.class public final Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final achievement:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final eventTimestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final expirationTimestampMs:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final senderNickname:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final subject:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final targetGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final type:Lcom/nianticproject/ingress/shared/rpc/push/a;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->senderNickname:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->subject:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->targetGuid:Ljava/lang/String;

    .line 105
    iput-wide v1, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->eventTimestampMs:J

    .line 106
    iput-wide v1, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->expirationTimestampMs:J

    .line 107
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->type:Lcom/nianticproject/ingress/shared/rpc/push/a;

    .line 108
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;->achievement:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 109
    return-void
.end method
