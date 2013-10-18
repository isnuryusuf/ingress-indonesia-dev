.class final Lcom/nianticproject/ingress/al;
.super Lcom/nianticproject/ingress/ao;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/b;

.field final synthetic b:Lcom/nianticproject/ingress/ak;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/ak;Lcom/nianticproject/ingress/common/b;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/nianticproject/ingress/al;->b:Lcom/nianticproject/ingress/ak;

    iput-object p2, p0, Lcom/nianticproject/ingress/al;->a:Lcom/nianticproject/ingress/common/b;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/ao;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/ui/k;)V
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/al;->a:Lcom/nianticproject/ingress/common/b;

    invoke-virtual {p1, v0}, Lcom/nianticproject/ingress/ui/k;->a(Lcom/nianticproject/ingress/common/b;)V

    .line 143
    return-void
.end method
