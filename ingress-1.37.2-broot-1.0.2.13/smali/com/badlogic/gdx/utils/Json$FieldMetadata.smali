.class Lcom/badlogic/gdx/utils/Json$FieldMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public elementType:Ljava/lang/Class;

.field public field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 0
    .parameter

    .prologue
    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput-object p1, p0, Lcom/badlogic/gdx/utils/Json$FieldMetadata;->field:Ljava/lang/reflect/Field;

    .line 963
    return-void
.end method
