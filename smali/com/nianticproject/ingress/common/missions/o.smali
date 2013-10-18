.class final Lcom/nianticproject/ingress/common/missions/o;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/o;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/o;->a:Lcom/nianticproject/ingress/common/missions/a;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/a;->b(Lcom/nianticproject/ingress/common/missions/a;)V

    .line 138
    return-void
.end method

.method public final u_()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/o;->a:Lcom/nianticproject/ingress/common/missions/a;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/a;->i:Lcom/nianticproject/ingress/common/missions/cq;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/missions/cq;->c()V

    .line 143
    return-void
.end method
