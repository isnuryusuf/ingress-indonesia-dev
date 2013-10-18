.class final Lcom/nianticproject/ingress/common/scanner/visuals/b/h;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 2
    .parameter

    .prologue
    .line 44
    new-instance v0, Lcom/nianticproject/ingress/common/scanner/visuals/b/k;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/scanner/visuals/b/k;-><init>(B)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/scanner/visuals/b/g;->a(Lcom/nianticproject/ingress/common/scanner/visuals/b/c;)Lcom/nianticproject/ingress/common/scanner/visuals/b/c;

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method
