.class public final Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final maySendPromoEmail:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final shouldPushNotifyForAtPlayer:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final shouldPushNotifyForInvitesAndFactionInfo:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final shouldPushNotifyForPortalAttacks:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final shouldSendEmail:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    .line 79
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    .line 80
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    .line 81
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    .line 82
    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean p1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    .line 43
    iput-boolean p2, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    .line 44
    iput-boolean p3, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    .line 45
    iput-boolean p4, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    .line 46
    iput-boolean p5, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    .line 47
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 86
    instance-of v1, p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    check-cast p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;

    .line 91
    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    iget-boolean v2, p1, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/a/a/ag;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    const-string/jumbo v0, "shouldSendEmail: %s, maySendPromoEmail: %s, shouldPushNotifyForAtPlayer %s, shouldPushNotifyForPortalAttacks: %s, shouldPushNotifyForInvitesAndFactionInfo %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldSendEmail:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->maySendPromoEmail:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForAtPlayer:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForPortalAttacks:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/nianticproject/ingress/shared/rpc/NotificationSettings;->shouldPushNotifyForInvitesAndFactionInfo:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
