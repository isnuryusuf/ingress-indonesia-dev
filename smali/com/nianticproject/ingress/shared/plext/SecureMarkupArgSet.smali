.class public Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/shared/plext/a;


# instance fields
.field private plain:Ljava/lang/String;
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;->plain:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nianticproject/ingress/shared/plext/SecureMarkupArgSet;->plain:Ljava/lang/String;

    return-object v0
.end method
