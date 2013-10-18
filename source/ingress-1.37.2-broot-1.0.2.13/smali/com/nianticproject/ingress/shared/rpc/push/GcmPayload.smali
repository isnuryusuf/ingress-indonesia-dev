.class public final Lcom/nianticproject/ingress/shared/rpc/push/GcmPayload;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final notifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/rpc/push/PushNotification;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field public final recipientNickname:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/GcmPayload;->id:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/GcmPayload;->recipientNickname:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/rpc/push/GcmPayload;->notifications:Ljava/util/List;

    .line 45
    return-void
.end method
