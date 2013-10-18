.class final Lcom/nianticproject/ingress/common/w/ae;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/w/ah;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/w/ah;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 137
    iput-object p2, p0, Lcom/nianticproject/ingress/common/w/ae;->a:Lcom/nianticproject/ingress/common/w/ah;

    iput-object p3, p0, Lcom/nianticproject/ingress/common/w/ae;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/nianticproject/ingress/common/w/ae;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/nianticproject/ingress/common/w/ae;->d:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/ae;->a:Lcom/nianticproject/ingress/common/w/ah;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/ae;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/ae;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/w/ae;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/nianticproject/ingress/common/w/ad;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/w/ah;->a(Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method
