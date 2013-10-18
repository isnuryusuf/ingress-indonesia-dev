.class public final Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private final plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final team:Lcom/nianticproject/ingress/shared/ai;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;->plain:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    .line 58
    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/shared/ai;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;->team:Lcom/nianticproject/ingress/shared/ai;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/FactionMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method
