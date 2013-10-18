.class final Lcom/nianticproject/ingress/common/missions/u;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/u;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/u;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/u;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/u;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/missions/a;->d(Lcom/nianticproject/ingress/common/missions/a;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v2

    const-string/jumbo v3, "AcceptIncomingCall"

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/a;->a(Lcom/nianticproject/ingress/common/w/d;Ljava/lang/String;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/cq;->a(Lcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method
