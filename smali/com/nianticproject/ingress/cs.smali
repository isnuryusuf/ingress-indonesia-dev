.class final Lcom/nianticproject/ingress/cs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/l/ac;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/cq;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/cq;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/nianticproject/ingress/cs;->a:Lcom/nianticproject/ingress/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 3
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/ct;

    const-string/jumbo v2, "updateOrientation"

    invoke-direct {v1, p0, v2, p1}, Lcom/nianticproject/ingress/ct;-><init>(Lcom/nianticproject/ingress/cs;Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 207
    return-void
.end method
