.class public final Lcom/nianticproject/ingress/shared/invites/InviteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final apGainOnInviteAccepted:J
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inviteeToStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/invites/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final numAvailableInvites:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->inviteeToStatusMap:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->numAvailableInvites:I

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->apGainOnInviteAccepted:J

    .line 80
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->numAvailableInvites:I

    return v0
.end method

.method public final b()Lcom/google/a/c/dh;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/a/c/dh",
            "<",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/invites/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/invites/InviteInfo;->inviteeToStatusMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/a/c/dh;->a(Ljava/util/Map;)Lcom/google/a/c/dh;

    move-result-object v0

    return-object v0
.end method
