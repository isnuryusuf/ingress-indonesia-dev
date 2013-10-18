.class public final Lcom/nianticproject/ingress/common/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;
.implements Lcom/nianticproject/ingress/common/ui/x;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/t/b;

.field private static final b:Lcom/nianticproject/ingress/common/t/b;

.field private static c:Z

.field private static final d:Ljava/nio/IntBuffer;

.field private static e:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private static f:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

.field private static g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;


# instance fields
.field private final h:Lcom/nianticproject/ingress/common/ui/t;

.field private final i:Lcom/nianticproject/ingress/common/ui/e;

.field private final j:J

.field private k:Z

.field private l:J

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 53
    const-string/jumbo v0, "SpriteBatch.uploadVertex"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/o;->a:Lcom/nianticproject/ingress/common/t/b;

    .line 54
    const-string/jumbo v0, "SpriteBatch.render"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/t/c;->a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/t/b;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/o;->b:Lcom/nianticproject/ingress/common/t/b;

    .line 62
    sput-boolean v1, Lcom/nianticproject/ingress/common/ui/o;->c:Z

    .line 65
    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    sput-object v0, Lcom/nianticproject/ingress/common/ui/o;->d:Ljava/nio/IntBuffer;

    return-void
.end method

.method public constructor <init>(Lcom/nianticproject/ingress/common/ui/t;Lcom/nianticproject/ingress/common/ui/e;J)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/o;->k:Z

    .line 159
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    .line 160
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/o;->i:Lcom/nianticproject/ingress/common/ui/e;

    .line 161
    iput-wide p3, p0, Lcom/nianticproject/ingress/common/ui/o;->j:J

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-object p0, Lcom/nianticproject/ingress/common/ui/o;->e:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    return-object p0
.end method

.method static synthetic a(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-object p0, Lcom/nianticproject/ingress/common/ui/o;->f:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object p0
.end method

.method static synthetic a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 0
    .parameter

    .prologue
    .line 51
    sput-object p0, Lcom/nianticproject/ingress/common/ui/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object p0
.end method

.method public static a()V
    .locals 3

    .prologue
    .line 73
    const-string/jumbo v0, "SubActivityApplicationListener.createResources"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "CreateMainUiTextureAtlas"

    const-string/jumbo v1, "{data:packed/data/common.atlas,data-xhdpi:packed/data-xhdpi/common.atlas,data-xxhdpi:packed/data-xxhdpi/common.atlas}"

    invoke-static {v1}, Lcom/nianticproject/ingress/common/b/c;->c(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;

    move-result-object v1

    new-instance v2, Lcom/nianticproject/ingress/common/ui/p;

    invoke-direct {v2}, Lcom/nianticproject/ingress/common/ui/p;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/b/c;->a(Ljava/lang/String;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;Lcom/nianticproject/ingress/common/b/o;)V

    .line 85
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/ui/q;

    const-string/jumbo v2, "LoadMainUiSkin"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/ui/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 101
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    new-instance v1, Lcom/nianticproject/ingress/common/ui/r;

    const-string/jumbo v2, "CreateSpriteBatch"

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/ui/r;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;)V

    .line 133
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 134
    return-void
.end method

.method public static a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 153
    sput-boolean p0, Lcom/nianticproject/ingress/common/ui/o;->c:Z

    .line 154
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->dispose()V

    .line 139
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->e:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->dispose()V

    .line 140
    return-void
.end method

.method static synthetic d()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->f:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    return-object v0
.end method

.method static synthetic e()Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    return-object v0
.end method

.method static synthetic f()Lcom/nianticproject/ingress/common/t/b;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->a:Lcom/nianticproject/ingress/common/t/b;

    return-object v0
.end method

.method static synthetic g()Lcom/nianticproject/ingress/common/t/b;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->b:Lcom/nianticproject/ingress/common/t/b;

    return-object v0
.end method


# virtual methods
.method public final a(II)Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 299
    :try_start_0
    const-string/jumbo v0, "SubActivityApplicationListener.newStage"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    sget-object v4, Lcom/nianticproject/ingress/common/ui/o;->e:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(FFZLcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/o;->k:Z

    .line 338
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/o;->k:Z

    return v0
.end method

.method public final create()V
    .locals 3

    .prologue
    .line 167
    :try_start_0
    const-string/jumbo v0, "SubActivityApplicationListener.create"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->d:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 170
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->d:Ljava/nio/IntBuffer;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/o;->d:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xd33

    sget-object v2, Lcom/nianticproject/ingress/common/ui/o;->d:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 172
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->d:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "GL_MAX_TEXTURE_SIZE"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/common/a/a;->a(JLjava/lang/String;)V

    .line 178
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->f:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/nianticproject/ingress/common/ui/o;->e:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-static {v0}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    sget-object v1, Lcom/nianticproject/ingress/common/ui/o;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    invoke-virtual {v0, v1, p0}, Lcom/nianticproject/ingress/common/ui/t;->a(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Lcom/nianticproject/ingress/common/ui/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 186
    invoke-static {}, La;->l()V

    return-void

    .line 185
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final dispose()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->h()V

    .line 293
    invoke-static {}, Lcom/nianticproject/ingress/common/ui/o;->b()V

    .line 294
    return-void
.end method

.method public final pause()V
    .locals 1

    .prologue
    .line 271
    :try_start_0
    const-string/jumbo v0, "SubActivityApplicationListener.pause"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final render()V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    :try_start_0
    const-string/jumbo v2, "SubActivityApplicationListener.render"

    invoke-static {v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 220
    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/o;->k:Z

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/o;->i:Lcom/nianticproject/ingress/common/ui/e;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/e;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ui/o;->j:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ui/o;->l:J

    add-long/2addr v2, v4

    .line 223
    iget-object v4, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    invoke-static {v2, v3}, Lcom/nianticproject/ingress/common/ui/t;->a(J)J

    move-result-wide v2

    const-wide/16 v4, 0x14

    div-long/2addr v2, v4

    .line 225
    iget-wide v4, p0, Lcom/nianticproject/ingress/common/ui/o;->l:J

    const-wide/16 v6, 0x4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x5

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nianticproject/ingress/common/ui/o;->l:J

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/o;->i:Lcom/nianticproject/ingress/common/ui/e;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/e;->a()V

    .line 233
    iget-object v3, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    iget-boolean v2, p0, Lcom/nianticproject/ingress/common/ui/o;->k:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/ui/t;->a(F)V

    .line 237
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 238
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthMask(Z)V

    .line 239
    const/16 v3, 0x201

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDepthFunc(I)V

    .line 240
    const/16 v3, 0xb71

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 242
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/nianticproject/ingress/common/ui/o;->m:I

    iget v6, p0, Lcom/nianticproject/ingress/common/ui/o;->n:I

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 243
    const/16 v3, 0x4100

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glClear(I)V

    .line 245
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/t;->e()V

    .line 247
    sget-boolean v2, Lcom/nianticproject/ingress/common/ui/o;->c:Z

    if-eqz v2, :cond_1

    .line 256
    sget-object v2, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v3, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-eq v2, v3, :cond_3

    :goto_1
    invoke-static {v0}, Lcom/nianticproject/ingress/common/j/aa;->a(Z)V

    .line 260
    :cond_1
    invoke-static {}, Lcom/nianticproject/ingress/common/f/a;->c()V

    .line 261
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/x/i;->d()V

    .line 262
    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 265
    return-void

    .line 233
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/nianticproject/ingress/common/ui/o;->i:Lcom/nianticproject/ingress/common/ui/e;

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/ui/e;->b()F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    goto :goto_0

    :cond_3
    move v0, v1

    .line 256
    goto :goto_1

    .line 264
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final resize(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    :try_start_0
    const-string/jumbo v0, "SubActivityApplicationListener.resize"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 193
    iput p1, p0, Lcom/nianticproject/ingress/common/ui/o;->m:I

    .line 194
    iput p2, p0, Lcom/nianticproject/ingress/common/ui/o;->n:I

    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v0, p1, p2}, Lcom/nianticproject/ingress/common/ui/t;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method

.method public final resume()V
    .locals 1

    .prologue
    .line 282
    :try_start_0
    const-string/jumbo v0, "SubActivityApplicationListener.resume"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/o;->h:Lcom/nianticproject/ingress/common/ui/t;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/t;->g()V

    .line 284
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/o;->i:Lcom/nianticproject/ingress/common/ui/e;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/ui/e;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 287
    return-void

    .line 286
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
