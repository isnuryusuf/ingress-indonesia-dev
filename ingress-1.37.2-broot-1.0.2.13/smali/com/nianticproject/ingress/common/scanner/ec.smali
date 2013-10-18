.class final Lcom/nianticproject/ingress/common/scanner/ec;
.super Lcom/badlogic/gdx/graphics/Color;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;FFF)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/high16 v5, 0x3f80

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/scanner/ec;-><init>(Ljava/lang/String;FFFF)V

    .line 37
    return-void
.end method

.method constructor <init>(Ljava/lang/String;FFFF)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    .line 41
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/ec;->c:Ljava/lang/String;

    .line 44
    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/ea;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method


# virtual methods
.method final a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 3
    .parameter

    .prologue
    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/scanner/ec;->c:Ljava/lang/String;

    const-class v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/ec;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/common/scanner/ea;->b()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to load color for key: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/scanner/ec;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->RED:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p0, v0}, Lcom/nianticproject/ingress/common/scanner/ec;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    goto :goto_0
.end method
