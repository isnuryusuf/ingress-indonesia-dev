.class public final Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final initialKnobs:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final nickname:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final playerEntity:Lcom/nianticproject/ingress/gameentity/f;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final pregameStatus:Lcom/nianticproject/ingress/shared/PregameStatus;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final serverVersion:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final storage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final xsrfToken:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->serverVersion:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    .line 110
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->nickname:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->xsrfToken:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->storage:Ljava/util/Map;

    .line 113
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->pregameStatus:Lcom/nianticproject/ingress/shared/PregameStatus;

    .line 114
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->initialKnobs:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    .line 115
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/PregameStatus;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->pregameStatus:Lcom/nianticproject/ingress/shared/PregameStatus;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/gameentity/f;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->xsrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->storage:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->storage:Ljava/util/Map;

    invoke-static {v0}, Lcom/google/a/c/dh;->a(Ljava/util/Map;)Lcom/google/a/c/dh;

    move-result-object v0

    goto :goto_0
.end method

.method public final f()Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->initialKnobs:Lcom/nianticproject/ingress/knobs/KnobBundleUpdate;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 119
    const-string/jumbo v1, "serverVersion: %s, pregameStatus: %s, xsrfToken: %s, playerGuid: %s, nickname: %s, storage: %s"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->serverVersion:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->pregameStatus:Lcom/nianticproject/ingress/shared/PregameStatus;

    aput-object v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->xsrfToken:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->nickname:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x5

    iget-object v3, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->storage:Ljava/util/Map;

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/handshake/ServerHandshake;->playerEntity:Lcom/nianticproject/ingress/gameentity/f;

    invoke-interface {v0}, Lcom/nianticproject/ingress/gameentity/f;->getGuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
