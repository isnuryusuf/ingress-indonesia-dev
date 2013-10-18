.class public abstract Lcom/nianticproject/ingress/common/j/at;
.super Lcom/nianticproject/ingress/common/j/al;
.source "SourceFile"


# static fields
.field private static final i:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field public b:Lcom/badlogic/gdx/graphics/Texture;

.field public c:Lcom/badlogic/gdx/graphics/Texture;

.field public d:Lcom/badlogic/gdx/graphics/Texture;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/nianticproject/ingress/common/j/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/j/at;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/j/at;->i:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/al;-><init>()V

    .line 23
    const-string/jumbo v0, "u_texture"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->e:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "u_texture2"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->f:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "u_texture3"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->g:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/al;-><init>()V

    .line 23
    const-string/jumbo v0, "u_texture"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->e:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "u_texture2"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->f:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "u_texture3"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->g:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/at;->e:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/j/al;-><init>()V

    .line 23
    const-string/jumbo v0, "u_texture"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->e:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "u_texture2"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->f:Ljava/lang/String;

    .line 25
    const-string/jumbo v0, "u_texture3"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->g:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/nianticproject/ingress/common/j/at;->e:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/at;->f:Ljava/lang/String;

    .line 46
    return-void
.end method

.method private a(Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;->setUniformi(Ljava/lang/String;I)V

    .line 106
    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/Texture;->bind(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/j/at;->f()Z

    move-result v1

    if-nez v1, :cond_1

    .line 111
    sget-object v1, Lcom/nianticproject/ingress/common/j/at;->i:Lcom/nianticproject/ingress/common/w/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[DRAW FAIL] Missing texture uniform for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 113
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILcom/badlogic/gdx/graphics/Texture;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 60
    packed-switch p1, :pswitch_data_0

    .line 71
    sget-object v0, Lcom/nianticproject/ingress/common/j/at;->i:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "Texture index out of bounds: %d. May need to support more textures."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :goto_0
    return-void

    .line 62
    :pswitch_0
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/at;->b:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 65
    :pswitch_1
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/at;->c:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 68
    :pswitch_2
    iput-object p2, p0, Lcom/nianticproject/ingress/common/j/at;->d:Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-super {p0}, Lcom/nianticproject/ingress/common/j/al;->dispose()V

    .line 120
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->b:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/at;->b:Lcom/badlogic/gdx/graphics/Texture;

    .line 121
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->c:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/at;->c:Lcom/badlogic/gdx/graphics/Texture;

    .line 122
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->d:Lcom/badlogic/gdx/graphics/Texture;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/ac;->a(Lcom/badlogic/gdx/utils/Disposable;)Lcom/badlogic/gdx/utils/Disposable;

    iput-object v1, p0, Lcom/nianticproject/ingress/common/j/at;->d:Lcom/badlogic/gdx/graphics/Texture;

    .line 123
    return-void
.end method

.method public final i()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->h:Lcom/nianticproject/ingress/common/j/ai;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/j/ai;->g()V

    .line 94
    return-void
.end method

.method protected j()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 78
    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/at;->d:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/at;->g:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-direct {p0, v2, v3, v4}, Lcom/nianticproject/ingress/common/j/at;->a(Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;I)Z

    move-result v2

    and-int/lit8 v2, v2, 0x1

    .line 80
    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/at;->c:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/at;->f:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v1}, Lcom/nianticproject/ingress/common/j/at;->a(Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;I)Z

    move-result v3

    and-int/2addr v2, v3

    .line 83
    iget-object v3, p0, Lcom/nianticproject/ingress/common/j/at;->b:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/j/at;->e:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v0}, Lcom/nianticproject/ingress/common/j/at;->a(Lcom/badlogic/gdx/graphics/Texture;Ljava/lang/String;I)Z

    move-result v3

    and-int/2addr v2, v3

    .line 84
    if-nez v2, :cond_0

    .line 88
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->h:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/j/at;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/j/ai;->b(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    move v0, v1

    .line 88
    goto :goto_0
.end method

.method protected k()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nianticproject/ingress/common/j/at;->h:Lcom/nianticproject/ingress/common/j/ai;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/j/at;->a:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/j/ai;->c(Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 99
    return-void
.end method
