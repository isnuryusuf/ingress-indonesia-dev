.class final Lcom/nianticproject/ingress/common/missions/tutorial/ac;
.super Lcom/nianticproject/ingress/common/model/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/tutorial/ab;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/ab;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ac;->a:Lcom/nianticproject/ingress/common/missions/tutorial/ab;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/model/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ac;->a:Lcom/nianticproject/ingress/common/missions/tutorial/ab;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->a(Lcom/nianticproject/ingress/common/missions/tutorial/ab;)Lcom/nianticproject/ingress/common/model/m;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 49
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/ac;->a:Lcom/nianticproject/ingress/common/missions/tutorial/ab;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->b(Lcom/nianticproject/ingress/common/missions/tutorial/ab;)Lcom/nianticproject/ingress/common/missions/tutorial/u;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/common/missions/tutorial/ab;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 51
    :cond_0
    return-void
.end method
