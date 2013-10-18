.class public Lcom/nianticproject/ingress/common/i/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# instance fields
.field private b:Lcom/badlogic/gdx/ApplicationListener;

.field private c:Ljava/lang/String;

.field private d:Lcom/nianticproject/ingress/common/i/c;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/common/i/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/ApplicationListener;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    .line 51
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->a:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 53
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 286
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 301
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->b:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->create()V

    .line 290
    return-void

    .line 298
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delegate appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/badlogic/gdx/ApplicationListener;)V
    .locals 3
    .parameter

    .prologue
    .line 237
    const-string/jumbo v0, "swapDelegate"

    invoke-static {v0}, Lcom/nianticproject/ingress/common/w/u;->a(Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :pswitch_0
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/i/a;->dispose()V

    .line 257
    :pswitch_1
    if-nez p1, :cond_0

    .line 268
    :goto_0
    return-void

    .line 251
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delegate appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    .line 263
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->a:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 265
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/i/a;->a()V

    .line 266
    iget v0, p0, Lcom/nianticproject/ingress/common/i/a;->e:I

    iget v1, p0, Lcom/nianticproject/ingress/common/i/a;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/i/a;->resize(II)V

    .line 267
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/i/a;->resume()V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public create()V
    .locals 5

    .prologue
    .line 59
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "%s.create"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/i/a;->a()V

    .line 63
    sget-object v0, Lcom/nianticproject/ingress/shared/ag;->a:Lcom/nianticproject/ingress/shared/ah;

    sget-object v1, Lcom/nianticproject/ingress/shared/ah;->a:Lcom/nianticproject/ingress/shared/ah;

    if-ne v0, v1, :cond_0

    .line 64
    new-instance v0, Lcom/nianticproject/ingress/common/j/y;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/j/y;-><init>(Lcom/badlogic/gdx/graphics/GL20;)V

    .line 65
    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sput-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    .line 66
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGL20()Lcom/badlogic/gdx/graphics/GL20;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 67
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getGLCommon()Lcom/badlogic/gdx/graphics/GLCommon;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 69
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 5

    .prologue
    .line 200
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "%s.dispose appState=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    .line 221
    :goto_0
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    .line 222
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    .line 223
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->g:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 224
    return-void

    .line 211
    :pswitch_2
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    .line 212
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->dispose()V

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "%s.pause"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 191
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "ignoring pause call since appState=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    :goto_0
    return-void

    .line 180
    :pswitch_1
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->f:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 181
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->pause()V

    goto :goto_0

    .line 188
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delegate appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public render()V
    .locals 5

    .prologue
    .line 129
    :try_start_0
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    sget-object v1, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "Exception/Error during ForwardingAppListener#render(), GL thread crashing..."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 159
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 135
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "%s.render (first render only)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->e:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 156
    :goto_0
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->render()V

    .line 166
    :goto_1
    return-void

    .line 140
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->e:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    goto :goto_0

    .line 144
    :pswitch_3
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "ignoring render call since appState=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delegate appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :cond_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 162
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 164
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unexpected throwble (should be a checked exception)."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public resize(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 73
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "%s.resize(w=%d h=%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iput p1, p0, Lcom/nianticproject/ingress/common/i/a;->e:I

    .line 75
    iput p2, p0, Lcom/nianticproject/ingress/common/i/a;->f:I

    .line 77
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->c:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/ApplicationListener;->resize(II)V

    .line 98
    return-void

    .line 91
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delegate appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 102
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "%s.resume"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget-object v0, Lcom/nianticproject/ingress/common/i/b;->a:[I

    iget-object v1, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/i/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 119
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unimplemented appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :pswitch_0
    sget-object v0, Lcom/nianticproject/ingress/common/i/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v1, "ignoring resume call since appState=%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_0
    return-void

    .line 116
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "delegate appState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :pswitch_2
    sget-object v0, Lcom/nianticproject/ingress/common/i/c;->d:Lcom/nianticproject/ingress/common/i/c;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    .line 123
    iget-object v0, p0, Lcom/nianticproject/ingress/common/i/a;->b:Lcom/badlogic/gdx/ApplicationListener;

    invoke-interface {v0}, Lcom/badlogic/gdx/ApplicationListener;->resume()V

    goto :goto_0

    .line 103
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    const-string/jumbo v0, "ForwardingAppListener(name=%s, appState=%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nianticproject/ingress/common/i/a;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nianticproject/ingress/common/i/a;->d:Lcom/nianticproject/ingress/common/i/c;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
