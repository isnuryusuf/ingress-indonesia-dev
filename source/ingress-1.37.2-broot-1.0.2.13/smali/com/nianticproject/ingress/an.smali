.class final Lcom/nianticproject/ingress/an;
.super Lcom/nianticproject/ingress/ao;
.source "SourceFile"


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/nianticproject/ingress/ak;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ak;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/nianticproject/ingress/an;->b:Lcom/nianticproject/ingress/ak;

    iput-boolean p2, p0, Lcom/nianticproject/ingress/an;->a:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ao;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/ui/k;)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/nianticproject/ingress/an;->a:Z

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/ui/k;->c(Z)V

    .line 166
    return-void
.end method
