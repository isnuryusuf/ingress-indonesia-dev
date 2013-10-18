.class final Lcom/nianticproject/ingress/common/missions/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:F

.field final synthetic e:Lcom/nianticproject/ingress/common/ui/widget/z;

.field final synthetic f:Lcom/nianticproject/ingress/common/ui/widget/z;

.field final synthetic g:Z

.field final synthetic h:Lcom/nianticproject/ingress/common/missions/cs;

.field final synthetic i:Lcom/nianticproject/ingress/common/missions/a/l;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/a/l;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;ZLcom/nianticproject/ingress/common/missions/cs;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/a/n;->i:Lcom/nianticproject/ingress/common/missions/a/l;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/a/n;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/missions/a/n;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/missions/a/n;->c:Ljava/lang/String;

    iput p5, p0, Lcom/nianticproject/ingress/common/missions/a/n;->d:F

    iput-object p6, p0, Lcom/nianticproject/ingress/common/missions/a/n;->e:Lcom/nianticproject/ingress/common/ui/widget/z;

    iput-object p7, p0, Lcom/nianticproject/ingress/common/missions/a/n;->f:Lcom/nianticproject/ingress/common/ui/widget/z;

    iput-boolean p8, p0, Lcom/nianticproject/ingress/common/missions/a/n;->g:Z

    iput-object p9, p0, Lcom/nianticproject/ingress/common/missions/a/n;->h:Lcom/nianticproject/ingress/common/missions/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 123
    new-instance v0, Lcom/nianticproject/ingress/common/missions/a/g;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/n;->i:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/missions/a/l;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/missions/a/n;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/missions/a/n;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/missions/a/n;->c:Ljava/lang/String;

    iget v5, p0, Lcom/nianticproject/ingress/common/missions/a/n;->d:F

    iget-object v6, p0, Lcom/nianticproject/ingress/common/missions/a/n;->e:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v7, p0, Lcom/nianticproject/ingress/common/missions/a/n;->f:Lcom/nianticproject/ingress/common/ui/widget/z;

    iget-object v8, p0, Lcom/nianticproject/ingress/common/missions/a/n;->i:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v8}, Lcom/nianticproject/ingress/common/missions/a/l;->d(Lcom/nianticproject/ingress/common/missions/a/l;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v8

    iget-boolean v9, p0, Lcom/nianticproject/ingress/common/missions/a/n;->g:Z

    invoke-direct/range {v0 .. v9}, Lcom/nianticproject/ingress/common/missions/a/g;-><init>(Lcom/nianticproject/ingress/common/ui/ad;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/widget/z;Lcom/nianticproject/ingress/common/ui/t;Z)V

    .line 126
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/n;->i:Lcom/nianticproject/ingress/common/missions/a/l;

    invoke-static {v1, v0}, Lcom/nianticproject/ingress/common/missions/a/l;->b(Lcom/nianticproject/ingress/common/missions/a/l;Lcom/nianticproject/ingress/common/ui/b/b;)V

    .line 127
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/a/n;->h:Lcom/nianticproject/ingress/common/missions/cs;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/a/g;->g()Lcom/nianticproject/ingress/common/missions/cr;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/cs;->a(Lcom/nianticproject/ingress/common/missions/cr;)V

    .line 128
    return-void
.end method
