.class final Lcom/nianticproject/ingress/common/missions/ey;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/eu;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/eu;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/ey;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ey;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/eu;->m:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/scanner/k;->B()Lcom/nianticproject/ingress/common/ui/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e/b;->b()V

    .line 242
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/ey;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/ey;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/eu;->d(Lcom/nianticproject/ingress/common/missions/eu;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    const/4 v2, 0x3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nianticproject/ingress/common/missions/eu;->a(Lcom/nianticproject/ingress/common/w/d;ILjava/util/concurrent/TimeUnit;)V

    .line 243
    return-void
.end method
