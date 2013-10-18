.class public Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/gameentity/components/FactionChoiceHint;


# instance fields
.field private final factionHint:Lcom/nianticproject/ingress/shared/ai;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final inviterGuid:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;->inviterGuid:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;->factionHint:Lcom/nianticproject/ingress/shared/ai;

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/shared/ai;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/shared/ai;

    iput-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;->factionHint:Lcom/nianticproject/ingress/shared/ai;

    .line 32
    iput-object p2, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;->inviterGuid:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getInviterGuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;->inviterGuid:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamHint()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/nianticproject/ingress/gameentity/components/SimpleFactionChoiceHint;->factionHint:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method
