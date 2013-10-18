.class public Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final actionType:Lcom/nianticproject/ingress/shared/z;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final buttonText:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final parms:Ljava/util/Map;
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


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->buttonText:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->actionType:Lcom/nianticproject/ingress/shared/z;

    .line 196
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->parms:Ljava/util/Map;

    .line 197
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/shared/z;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nianticproject/ingress/shared/z;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->buttonText:Ljava/lang/String;

    .line 175
    iput-object p2, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->actionType:Lcom/nianticproject/ingress/shared/z;

    .line 176
    iput-object p3, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->parms:Ljava/util/Map;

    .line 177
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->buttonText:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/nianticproject/ingress/shared/z;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->actionType:Lcom/nianticproject/ingress/shared/z;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
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
    .line 188
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/PregameStatus$UserAction;->parms:Ljava/util/Map;

    return-object v0
.end method
