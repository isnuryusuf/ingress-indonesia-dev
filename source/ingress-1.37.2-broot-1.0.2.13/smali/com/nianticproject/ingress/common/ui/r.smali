.class final Lcom/nianticproject/ingress/common/ui/r;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 1
    .parameter

    .prologue
    .line 104
    new-instance v0, Lcom/nianticproject/ingress/common/ui/s;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/ui/s;-><init>(Lcom/nianticproject/ingress/common/ui/r;)V

    invoke-static {v0}, Lcom/nianticproject/ingress/common/ui/o;->a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 129
    const/4 v0, 0x0

    return-object v0
.end method
