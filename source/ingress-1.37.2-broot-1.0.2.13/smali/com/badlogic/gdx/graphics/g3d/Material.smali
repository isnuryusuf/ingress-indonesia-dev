.class public Lcom/badlogic/gdx/graphics/g3d/Material;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final tmp:[F


# instance fields
.field public Ambient:Lcom/badlogic/gdx/graphics/Color;

.field public BlendDestFactor:I

.field public BlendSourceFactor:I

.field public Diffuse:Lcom/badlogic/gdx/graphics/Color;

.field public Emissive:Lcom/badlogic/gdx/graphics/Color;

.field public Name:Ljava/lang/String;

.field public Shader:Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

.field public Specular:Lcom/badlogic/gdx/graphics/Color;

.field public Texture:Lcom/badlogic/gdx/graphics/TextureRef;

.field public TexturePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->TexturePath:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    .line 39
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 40
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Specular:Lcom/badlogic/gdx/graphics/Color;

    .line 41
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Emissive:Lcom/badlogic/gdx/graphics/Color;

    .line 42
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    .line 43
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    .line 49
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Name:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private setTmpArray(FFFF)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 54
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 55
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 56
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    const/4 v1, 0x3

    aput p4, v0, v1

    .line 57
    return-void
.end method


# virtual methods
.method public read(Ljava/io/DataInputStream;)Z
    .locals 5
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Name:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->TexturePath:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 92
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 93
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 94
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 95
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    .line 97
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    .line 100
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    .line 101
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v2

    .line 102
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readFloat()F

    move-result v3

    .line 103
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    .line 105
    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    .line 106
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public set(I)V
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xbe2

    const/4 v5, 0x0

    .line 63
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getGL10()Lcom/badlogic/gdx/graphics/GL10;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->setTmpArray(FFFF)V

    .line 67
    const/16 v1, 0x1200

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    invoke-interface {v0, p1, v1, v2, v5}, Lcom/badlogic/gdx/graphics/GL10;->glMaterialfv(II[FI)V

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v1, :cond_1

    .line 70
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v2, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g3d/Material;->setTmpArray(FFFF)V

    .line 71
    const/16 v1, 0x1201

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/Material;->tmp:[F

    invoke-interface {v0, p1, v1, v2, v5}, Lcom/badlogic/gdx/graphics/GL10;->glMaterialfv(II[FI)V

    .line 74
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    if-lez v1, :cond_2

    .line 75
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL10;->glBlendFunc(II)V

    .line 76
    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glEnable(I)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-interface {v0, v6}, Lcom/badlogic/gdx/graphics/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method public write(Ljava/io/DataOutputStream;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Texture:Lcom/badlogic/gdx/graphics/TextureRef;

    iget-object v3, v3, Lcom/badlogic/gdx/graphics/TextureRef;->Name:Ljava/lang/String;

    const-string/jumbo v4, "\\"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 121
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 123
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Ambient:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 130
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 132
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->Diffuse:Lcom/badlogic/gdx/graphics/Color;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeFloat(F)V

    .line 134
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendSourceFactor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 135
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/Material;->BlendDestFactor:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 136
    return v1

    :cond_3
    move v0, v2

    .line 120
    goto :goto_0
.end method
