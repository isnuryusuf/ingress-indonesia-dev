.class public final Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private final plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->plain:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->plain:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/shared/plext/c;
    .locals 3
    .parameter

    .prologue
    .line 53
    new-instance v0, Lcom/nianticproject/ingress/shared/plext/c;

    sget-object v1, Lcom/nianticproject/ingress/shared/plext/d;->a:Lcom/nianticproject/ingress/shared/plext/d;

    new-instance v2, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/nianticproject/ingress/shared/plext/c;-><init>(Lcom/nianticproject/ingress/shared/plext/d;Lcom/nianticproject/ingress/shared/plext/a;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/TextMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method
