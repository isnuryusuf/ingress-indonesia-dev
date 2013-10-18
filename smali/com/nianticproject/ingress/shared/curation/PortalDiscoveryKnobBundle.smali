.class public final Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/g;


# static fields
.field public static final a:Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;


# instance fields
.field private final enableEdit:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enablePortalDiscovery:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final enableResumableUpload:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final resumableUploadSizeBytes:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final scalePrecisely:Z
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final thumbnailCompression:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field

.field private final thumbnailSize:I
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;-><init>(B)V

    sput-object v0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->a:Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/high16 v4, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableEdit:Z

    .line 88
    const/16 v0, 0x46

    iput v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    .line 89
    const/16 v0, 0x800

    iput v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    .line 90
    iput-boolean v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->scalePrecisely:Z

    .line 91
    iput-boolean v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enablePortalDiscovery:Z

    .line 92
    iput-boolean v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableResumableUpload:Z

    .line 93
    iput v4, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    .line 94
    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    const/16 v3, 0x64

    if-gt v0, v3, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    if-gt v0, v4, :cond_3

    :goto_3
    invoke-static {v1}, Lcom/google/a/a/an;->b(Z)V

    .line 95
    return-void

    :cond_0
    move v0, v2

    .line 94
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;-><init>()V

    .line 101
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->scalePrecisely:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enablePortalDiscovery:Z

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableResumableUpload:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 161
    if-ne p0, p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 164
    :cond_3
    check-cast p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;

    .line 165
    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableEdit:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableEdit:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 166
    :cond_4
    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->scalePrecisely:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->scalePrecisely:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 167
    :cond_5
    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enablePortalDiscovery:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enablePortalDiscovery:Z

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 168
    :cond_6
    iget-boolean v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableResumableUpload:Z

    iget-boolean v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableResumableUpload:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 169
    :cond_7
    iget v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    iget v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 170
    :cond_8
    iget v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    iget v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 171
    :cond_9
    iget v2, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    iget v3, p1, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    return v0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    .line 147
    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableEdit:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 150
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->scalePrecisely:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v3

    .line 151
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enablePortalDiscovery:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableResumableUpload:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 153
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    add-int/2addr v0, v1

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    add-int/2addr v0, v1

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    add-int/2addr v0, v1

    .line 156
    return v0

    :cond_0
    move v0, v2

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    .line 150
    goto :goto_1

    :cond_2
    move v0, v2

    .line 151
    goto :goto_2

    :cond_3
    move v1, v2

    .line 152
    goto :goto_3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PortalDiscoveryKnobBundle [enableEdit="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableEdit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailCompression="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailCompression:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbnailSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->thumbnailSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enablePortalDiscovery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enablePortalDiscovery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", enableResumableUpload="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->enableResumableUpload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", scalePrecisely="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->scalePrecisely:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resumableUploadSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nianticproject/ingress/shared/curation/PortalDiscoveryKnobBundle;->resumableUploadSizeBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
