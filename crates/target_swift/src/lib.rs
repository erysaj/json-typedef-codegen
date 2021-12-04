use jtd_codegen::target::{self, inflect, metadata};
use jtd_codegen::Result;
use std::collections::{BTreeMap, BTreeSet};
use std::io::Write;

pub struct Target {}

impl Target {
    pub fn new() -> Self {
        Self {}
    }
}

impl jtd_codegen::target::Target for Target {
    type FileState = FileState;

    fn strategy(&self) -> target::Strategy {
        target::Strategy {
            file_partitioning: target::FilePartitioningStrategy::FilePerType("swift".into()),
            enum_member_naming: target::EnumMemberNamingStrategy::Modularized,
            optional_property_handling: target::OptionalPropertyHandlingStrategy::WrapWithNullable,
            booleans_are_nullable: false,
            int8s_are_nullable: false,
            uint8s_are_nullable: false,
            int16s_are_nullable: false,
            uint16s_are_nullable: false,
            int32s_are_nullable: false,
            uint32s_are_nullable: false,
            float32s_are_nullable: false,
            float64s_are_nullable: false,
            strings_are_nullable: false,
            timestamps_are_nullable: false,
            arrays_are_nullable: false,
            dicts_are_nullable: false,
            aliases_are_nullable: false,
            enums_are_nullable: false,
            structs_are_nullable: false,
            discriminators_are_nullable: false,
        }
    }

    fn name(&self, kind: target::NameableKind, parts: &[String]) -> String {
        // match kind {
        //     target::NameableKind::Type => TYPE_NAMING_CONVENTION.inflect(parts),
        //     target::NameableKind::Field => FIELD_NAMING_CONVENTION.inflect(parts),
        //     target::NameableKind::EnumMember => ENUM_MEMBER_NAMING_CONVENTION.inflect(parts),
        // }
        "name".into()
    }

    fn expr(
        &self,
        state: &mut FileState,
        metadata: metadata::Metadata,
        expr: target::Expr,
    ) -> String {
        "expr".into()
    }

    fn item(
        &self,
        out: &mut dyn Write,
        state: &mut FileState,
        item: target::Item,
    ) -> Result<Option<String>> {
        Ok(Some("item".into()))
    }
}

#[derive(Default)]
pub struct FileState {
    // imports: BTreeMap<String, BTreeSet<String>>,
}

#[cfg(test)]
mod tests {
    mod std_tests {
        jtd_codegen_test::std_test_cases!(&crate::Target::new());
    }

    // mod optional_std_tests {
    //     jtd_codegen_test::strict_std_test_case!(
    //         &crate::Target::new(),
    //         empty_and_nonascii_properties
    //     );

    //     jtd_codegen_test::strict_std_test_case!(
    //         &crate::Target::new(),
    //         empty_and_nonascii_enum_values
    //     );
    // }
}
