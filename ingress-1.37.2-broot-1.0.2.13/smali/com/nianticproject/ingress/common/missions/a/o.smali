.class final Lcom/nianticproject/ingress/common/missions/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:F

.field final synthetic c:Lcom/nianticproject/ingress/common/ui/widget/z;

.field final synthetic d:Lcom/nianticproject/ingress/common/ui/widget/z;

.field final synthetic e:Z

.field final synthetic f:Lcom/nianticproject/ingress/common/missions/ct;

.field final synthetic g:Lcom/nianticproject/ingress/common/missions/a/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;ZLcom/nianticproject/ingress/common/missions/ct;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/o;->g:Lcom/nianticproject/ingress/common/missions/a/l;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/o;->a:Ljava/lang/String;

    iput p3, p0, Lcom/nianticproject/ingress/common/missions/a/o;->b:F

    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/a/o;->c:Lcom/nianticproject/ingress/common/ui/widget/z;

    iput-object p5, p0, Lcom/nianticproject/ingress/common/missions/a/o;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    iput-boolean p6, p0, Lcom/nianticproject/ingress/common/missions/a/o;->e:Z

    iput-object p7, p0, Lcom/nianticproject/ingress/common/missions/a/o;->f:Lcom/nianticproject/ingress/common/missions/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 144
    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/i;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/o;->g:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/missions/a/l;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/o;->a:Ljava/lang/String;

    iget v3, p0, Lcom/nianticproject/ingress/common/missions/a/o;->b:F

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/a/o;->c:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v5, p0, Lcom/nianticproject/ingress/common/missions/a/o;->d:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/a/o;->g:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v6}, Lcom/nianticproject/ingress/common/missions/a/l;->e(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nianticproject/ingress/common/missions/a/o;->e:Z

    invoke-direct/range {v0 .. v7}, Lcom/nianticproject/ingress/common/missions/a/i;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;Z)V

    .line 147
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/o;->g:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/missions/a/l;->c(Lcom/nianticproject/ingress/common/missions/a/l;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 148
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/o;->f:Lcom/nianticproject/ingress/common/missions/ct;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/i;->g()Lcom/nianticproject/ingress/common/missions/cr;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/ct;->a(Lcom/nianticproject/ingress/common/missions/cr;)V

    .line 149
    return-void
.end method
